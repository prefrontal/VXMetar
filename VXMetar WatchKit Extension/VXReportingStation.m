//
//  VXReportingStation.m
//  VXMetar
//
//  Created by Craig Bennett on 12/31/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import "VXReportingStation.h"

@implementation VXReportingStation

@synthesize stationIdentifier;
@synthesize associatedCity;
@synthesize associatedState;
@synthesize latitude;
@synthesize longitude;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ - %f - %f", stationIdentifier, latitude, longitude];
}

@end
