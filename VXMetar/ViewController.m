//
//  ViewController.m
//  VXMetar
//
//  Created by Craig Bennett on 12/29/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import "ViewController.h"

#import "VXReportingStationManager.h"
#import "VXReportingStation.h"

@interface ViewController ()

// Location Manager Handling
@property (nonatomic,readwrite,retain) CLLocationManager *locationManager;

// NSXMLParser Handling
@property (nonatomic,readwrite,retain) NSXMLParser *parser;
@property (nonatomic,readwrite,assign) bool isRawTextElement;

// Interface Elements
@property (weak, nonatomic) IBOutlet UILabel *airportIdentifier;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITextView *metarText;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // Create location manager obejct and set delegate
    if (_locationManager == nil)
    {
        _locationManager = [CLLocationManager new];
        [_locationManager setDelegate:self];
        [_locationManager setDesiredAccuracy:kCLLocationAccuracyKilometer];
        [_locationManager setDistanceFilter:100];
    }
    
    // Ask the user for permission to determine location
    [_locationManager requestWhenInUseAuthorization];
    [_locationManager requestLocation];

    //_metarText.textContainer.lineBreakMode = NSLineBreakByWordWrapping;

    // Configure interface objects here.
    [_airportIdentifier setText:@""];
    [_metarText setText:@""];

//    VXReportingStationManager *stationManager = [VXReportingStationManager sharedManager];
//    CLLocationCoordinate2D lastPosition = [stationManager getLastStationPosition];
//
//    CLLocationCoordinate2D location = CLLocationCoordinate2DMake (lastPosition.latitude, -1 * lastPosition.longitude);
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (location, 10000, 10000);
//
//    [self.mapView setRegion:region];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark METAR Request Methods

/**
 * Submit a request for the latest METAR data for a specific reporting station
 *
 * @param station A VXReportingStation object identifying the station of interest
 */
- (void) issueMetarRequestWithStation:(VXReportingStation *)station
{
    NSString *prefix = @"https://aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=xml&stationString=";
    NSString *suffix = @"&hoursBeforeNow=2&mostRecent=TRUE";
    NSString *query = [NSString stringWithFormat:@"%@%@%@",prefix,station.stationIdentifier,suffix];
    
    NSURL *dataUrl = [NSURL URLWithString:query];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:dataUrl completionHandler:
                                      ^(NSData *data, NSURLResponse *response, NSError *error)
                                      {
                                          if (error != nil)
                                          {
                                              [_metarText setText:@"Couldn't reach server..."];
                                              return;
                                          }
                                          
                                          //NSString* myString = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
                                          //NSLog (@"%@", myString);
                                          
                                          _parser = [[NSXMLParser alloc] initWithData:data];
                                          [_parser setDelegate:self];
                                          [_parser setShouldResolveExternalEntities:NO];
                                          [_parser parse];
                                      }];
    
    [dataTask resume];
}

#pragma mark Location Manager Delegate Methods

-(void) locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusAuthorizedAlways)
    {
        [_locationManager setDesiredAccuracy:kCLLocationAccuracyKilometer];
        [_locationManager setDistanceFilter:100];
        [_locationManager requestLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    double currentLatitude = location.coordinate.latitude;
    double currentLongitude = location.coordinate.longitude;
    
    VXReportingStationManager *stationManager = [VXReportingStationManager sharedManager];
    VXReportingStation *closestStation = [stationManager findClosestStationWithLatitude:currentLatitude andLongitude:currentLongitude];
    
    [_airportIdentifier setText:[closestStation stationIdentifier]];
    [_metarText setText:@""];
    
    [self issueMetarRequestWithStation:closestStation];
    

    // Update the map view with the new METAR station location
    CLLocationCoordinate2D lastPosition = [stationManager getLastStationPosition];
    lastPosition.longitude *= -1;  // Coordinates come from the database without E/W designation
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (lastPosition, 10000, 10000);
    
    [self.mapView setRegion:region];
}

-(void) locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog (@"%@", newLocation);
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(nonnull NSError *)error
{
    NSLog (@"Could not find location: %@", error);
}

#pragma mark NSXMLParser Delegate Methods

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName attributes:(NSDictionary *)attributeDict
{
    if ([elementName isEqualToString:@"raw_text"])
        _isRawTextElement = true;
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"raw_text"])
        _isRawTextElement = false;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (_isRawTextElement)
    {
        // Do UI updates on the main queue, or face the wrath of the exception gods...
        dispatch_async (dispatch_get_main_queue(),
                        ^{
                            [_metarText setText:string];
                        });
    }
}

@end
