//
//  VXReportingStationManager.h
//  VXMetar
//
//  Created by Craig Bennett on 12/31/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VXReportingStationManager : NSObject

@property (nonatomic,readwrite,retain) NSMutableArray *stationList;

+ (id)sharedManager;

- (VXReportingStation *) getClosestStation;

@end
