# Data Sources
Data and metadata to generate a list of METAR-reporting airports and their locations.

There are several places to grab the data we need for this project. Two are presented here.

**WeatherStations.txt**

Data provided by the National Center for Atmospheric Research. Contains a list of reporting stations and boolean data regarding the type of reports provided by each station. This includes whether the station produces METAR data. Latitude and longitude data is provided, but only down to the minute. This gets us within a mile or so, typically. It would be preferable to do a bit better.

**wxl_rf.txt**

Metadata for the National Airspace Systems Resources data. Specifically, the weather reporting locations data.

**WXL.txt**

Weather reporting locations data from the National Airspace Systems Resources database. The above metadata file is used to decode the file format, which is based on fixed-length text fields. This file contains latitude and longitude data for each station down to tenths of a second. Also provides information on the weather servies available at each location, including METAR. One downside is that not all of the locations providing METAR are listed as such in the file. This means that the NCAR data is needed to produce a complete list.
