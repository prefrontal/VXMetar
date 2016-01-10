//
//  VXReportingStationManager.m
//  VXMetar
//
//  Created by Craig Bennett on 12/31/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import "VXReportingStation.h"

#import "VXReportingStationManager.h"
#import "VXReportingStationManager+Data.h"

// -----------------------------------------------------------------------

#pragma mark Private Declarations

@interface VXReportingStationManager ()

@property (nonatomic, readwrite, assign) CLLocationCoordinate2D lastPosition;

@end

// -----------------------------------------------------------------------

@implementation VXReportingStationManager

#pragma mark Singleton Methods

+ (id)sharedManager
{
    static VXReportingStationManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once (&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    
    return sharedMyManager;
}

- (id)init
{
    if (self = [super init])
    {
        _stationList = [self loadStations];
        _lastPosition = CLLocationCoordinate2DMake (0.0, 0.0);
    }
    
    return self;
}

- (void)dealloc
{
    // Should never be called, but just here for clarity really.
}

#pragma mark Station List Handling

static const double DEGREES_TO_RADIANS = M_PI / 180;
static const double EARTH_RADIUS_IN_KILOMETERS = 6372.79756;

/**
 * Takes a latitude and longitude value and finds the station in the 
 * station list that is physically closes to the cooridnate.
 *
 * @param currentLatitude The latitude of the position you wish to query against.
 * @param currentLongitude The longitude of the position you wish to query against.
 * @return Returns the VXReportingStation object that is closest to the coordinates.
 */
- (VXReportingStation *) findClosestStationWithLatitude:(double)currentLatitude andLongitude:(double)currentLongitude;
{
    // The goal is to find the closest reporting station to the given coordinates
    // Keep track of the closest station and the best distance value so far
    VXReportingStation *closestStation = nil;
    double closestStationDistance = DBL_MAX;
    
    // Convert the current coordinates from degrees to radians for use later
    // Also, take the absolute value of the coordinates since they may be negative
    double currentLatitudeRadians = fabs(currentLatitude) * DEGREES_TO_RADIANS;
    // double currentLongitudeRadians = fabs(currentLongitude) * DEGREES_TO_RADIANS;
    
    // Iterate over the station list, calculating distance for each station
    for (VXReportingStation *station in _stationList)
    {
        // Using the Haversine distance formula: https://en.wikipedia.org/wiki/Haversine_formula
        
        double latitudeDiffRadians = (fabs(currentLatitude) - station.latitude) * DEGREES_TO_RADIANS;
        double longitudeDiffRadians = (fabs(currentLongitude) - station.longitude) * DEGREES_TO_RADIANS;
        double stationLatitudeRadians = fabs(station.latitude)*DEGREES_TO_RADIANS;
        
        double a = pow(sin(latitudeDiffRadians/2),2) + cos(currentLatitudeRadians) * cos(stationLatitudeRadians) * pow(sin(longitudeDiffRadians/2),2);
        double distance = 2 * EARTH_RADIUS_IN_KILOMETERS * atan2(sqrt(a), sqrt(1-a));

        if (distance < closestStationDistance)
        {
            closestStationDistance = distance;
            closestStation = station;
        }
    }

    _lastPosition = CLLocationCoordinate2DMake (closestStation.latitude, closestStation.longitude);

    return closestStation;
}

- (CLLocationCoordinate2D) getLastPosition
{
    return _lastPosition;
}

@end
