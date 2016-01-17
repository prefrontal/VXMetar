//
//  VXReportingStationManager.h
//  VXMetar
//
//  Created by Craig Bennett on 12/31/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class VXReportingStation;

@interface VXReportingStationManager : NSObject

@property (nonatomic,readwrite,retain) NSMutableArray *stationList;

+ (id)sharedManager;

// Primary methods for station search
- (VXReportingStation *) findClosestStationWithLatitude:(double)currentLatitude andLongitude:(double)currentLongitude;

// Convenience methods for use in secondary classes
- (VXReportingStation *) getLastStation;
- (CLLocationCoordinate2D) getLastStationPosition;
- (double) getLastStationDistanceFrom:(CLLocationCoordinate2D) location;

@end
