//
//  InterfaceController.m
//  VXMetar WatchKit Extension
//
//  Created by Craig Bennett on 12/29/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

#import "VXReportingStation.h"
#import "VXReportingStationManager.h"

#import "InterfaceController.h"

#pragma mark Class-Continuation Category

@interface InterfaceController()
{
    // NSXMLParser Handling
    NSXMLParser *parser;
    bool isRawTextElement;
}

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *airportIdentifier;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *metarText;

@end

#pragma mark Begin Implementation

@implementation InterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];

    // Configure interface objects here.
    [_airportIdentifier setTitle:@"TextA"];
    [_metarText setText:@"TextB"];
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
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
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
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

                    parser = [[NSXMLParser alloc] initWithData:data];
                    [parser setDelegate:self];
                    [parser setShouldResolveExternalEntities:NO];
                    [parser parse];
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

    [self issueMetarRequestWithStation:closestStation];

    [_airportIdentifier setTitle:[closestStation stationIdentifier]];
    [_metarText setText:@""];
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
        isRawTextElement = true;
}
      
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"raw_text"])
        isRawTextElement = false;
}
      
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (isRawTextElement)
        [_metarText setText:string];
}

@end



