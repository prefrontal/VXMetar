#include <algorithm>
#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

std::string trim (std::string str)
{
	if (1 >= str.size())
		return str;
	
	size_t first = str.find_first_not_of(' ');
	size_t last = str.find_last_not_of(' ');
	
	if ((std::string::npos == first) || (std::string::npos == last))
		return "";
	
	return str.substr (first, (last-first+1));
}

std::string ConvertToDecimal (const std::string input)
{
	std::string coordinate = input;
	
	// Latitude and longitude have different lengths in the NASR database
	// add a zero to latitude values so they are equivalent
	if (coordinate.length() == 8)
		coordinate = "0" + coordinate;
	
	double degrees = atof(coordinate.substr(0,3).c_str());
	double minutes = atof(coordinate.substr(3,2).c_str());
	double seconds = atof(coordinate.substr(5,2).c_str());
	
	double final = degrees + minutes/60 + seconds/60/60;
	
	// Debugging (if required)
	// std::cout << final << ": " << degrees << ", " << minutes << ", " << seconds << std::endl;
	
	std::string output;
	
	std::stringstream ss;
	ss << final;
	ss >> output;
	
	return output;
}

std::vector<std::string> GenerateMetarStationList ()
{
	// Load the NCAR stations file
	// This is a data file with fixed field lengths
	std::ifstream infile ("WeatherStations.txt");
	
	std::string line;
	std::vector<std::string> stationList;
	
	while (std::getline (infile, line))
	{	
		std::istringstream iss (line);
		std::string input = iss.str();
		
		// Comment lines are prefixed with an exclamation
		if (0 == input.substr(0,1).compare("!"))
			continue;

		// Data lines have an exact length of 83 characters
		if (83 != input.length())
			continue;

		// Only work with US METAR stations for now
		if (0 != input.substr(81,2).compare("US"))
			continue;
			
		// Ignore if not a valid METAR reporting station
		if (0 != input.substr(62,1).compare("X"))
			continue;
		
		stationList.push_back(input.substr(20,4));
	}
	
	// Display the station list for debugging 
	//for (auto i = stationList.begin(); i != stationList.end(); ++i)
	//	std::cout << *i << std::endl;
	
	return stationList;
}

void GenerateNasrOutput (std::vector<std::string> stationList)
{
	// Load the NASR weather station fil
	// This is a data file with fixed field lengths
	std::ifstream infile ("WXL.txt");
	std::ofstream outFile;
	
	outFile.open ("Output-StationList.txt");
	
	std::string line;
	
	while (std::getline (infile, line))
	{	
		std::istringstream iss (line);
		std::string input = iss.str();
		
		std::string identifier = trim(input.substr(0,5));
		
		// The station list has a full four character prefix while the NCAR
		// data only has three characters for "K" stations. Fix that here.
		if (identifier.length() == 3)
			identifier = "K" + identifier;
		
		// Is this station identifier in the METAR station list?
		if (std::find(stationList.begin(), stationList.end(), identifier) == stationList.end())
		{
			std::cout << "Skipping: " << identifier << std::endl;
			continue;
		}
		
		std::string latitude = ConvertToDecimal(input.substr(5,8));
		std::string longitude = ConvertToDecimal(input.substr(13,9));
		
		std::string elevation = trim(input.substr(53,5));
		std::string elevationAccuracy = trim(input.substr(58,1));
		
		std::string associatedCity = trim(input.substr(22,26));
		std::string associatedState = trim(input.substr(48,2));
		std::string associatedCountry = trim(input.substr(50,3));

		std::string servicesAvailable = trim(input.substr(59,60));

		// Debugging (if required)
		// std::cout << identifier << std::endl;
		// std::cout << latitude << ", " << longitude << std::endl;
		// std::cout << elevation << ", " << elevationAccuracy << std::endl;
		// std::cout << associatedCity << ", " << associatedState << ", " << associatedCounty << std::endl;
		// std::cout << servicesAvailable << std::endl;
		// std::cout << std::endl;

		//outFile << identifier << " " << latitude << " " << longitude << " " << associatedCity << " " << associatedState << std::endl;

		outFile << "VXReportingStation *" << identifier << " = [VXReportingStation new];" << std::endl;
		outFile << identifier << ".stationIdentifier = @\"" << identifier << "\";" << std::endl;
		outFile << identifier << ".associatedCity = @\"" << associatedCity << "\";" << std::endl;
		outFile << identifier << ".associatedState = @\"" << associatedState << "\";" << std::endl;
		outFile << identifier << ".latitude = " << latitude << ";" << std::endl;
		outFile << identifier << ".longitude = " << longitude << ";" << std::endl;
		outFile << "[stationList addObject:" << identifier << "];" << std::endl;
		outFile << std::endl;
	}
	
	outFile.close();
}

int main (int argc, char *argv[]) 
{	
	// First, get the list of METAR-reporting stations
	std::vector<std::string> stationList;
	stationList = GenerateMetarStationList ();
	
	// Next, run that list of stations through the NASR station list
	GenerateNasrOutput (stationList);
	
	return false;
}

