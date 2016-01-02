//
//  VXReportingStation.h
//  VXMetar
//
//  Created by Craig Bennett on 12/31/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VXReportingStation : NSObject

@property (nonatomic, readwrite, retain) NSString *stationIdentifier;
@property (nonatomic, readwrite, retain) NSString *associatedCity;
@property (nonatomic, readwrite, retain) NSString *associatedState;
@property (nonatomic, readwrite, assign) double latitude;
@property (nonatomic, readwrite, assign) double longitude;

@end
