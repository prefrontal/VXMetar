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

- (VXReportingStation *) findClosestStationWithLatitude:(double)currentLatitude andLongitude:(double)currentLongitude;

- (CLLocationCoordinate2D) getLastPosition;

@end
