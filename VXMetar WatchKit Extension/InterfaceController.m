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

@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *airportIdentifier;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *metarText;
@end


@implementation InterfaceController

@synthesize locationManager;

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];

    // Configure interface objects here.
    [_airportIdentifier setTitle:@""];
    [_metarText setText:@""];
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    // Create location manager obejct and set delegate
    if (locationManager == nil)
    {
        locationManager = [CLLocationManager new];
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyKilometer];
        [locationManager setDistanceFilter:100];
    }
    
    // Ask the user for permission to determine location
    [locationManager requestWhenInUseAuthorization];
    
    [locationManager requestLocation];
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

#pragma mark Location Manager Delegate Methods

-(void) locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusAuthorizedAlways)
    {
        [locationManager setDesiredAccuracy:kCLLocationAccuracyKilometer];
        [locationManager setDistanceFilter:100];
        [locationManager requestLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = [locations lastObject];
    double currentLatitude = location.coordinate.latitude;
    double currentLongitude = location.coordinate.longitude;

    VXReportingStationManager *stationManager = [VXReportingStationManager sharedManager];
    VXReportingStation *closestStation = [stationManager findClosestStationWithLatitude:currentLatitude andLongitude:currentLongitude];

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

@end



