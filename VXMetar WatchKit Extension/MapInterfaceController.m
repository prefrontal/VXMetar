//
//  MapInterfaceController.m
//  VXMetar
//
//  Created by Craig Bennett on 1/7/16.
//  Copyright © 2016 Voxelwise. All rights reserved.
//

#import "MapInterfaceController.h"

#import "VXReportingStation.h"
#import "VXReportingStationManager.h"

@interface MapInterfaceController ()

@end

@implementation MapInterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];

    VXReportingStationManager *stationManager = [VXReportingStationManager sharedManager];
    CLLocationCoordinate2D lastPosition = [stationManager getLastStationPosition];

    CLLocationCoordinate2D location = CLLocationCoordinate2DMake (lastPosition.latitude, -1 * lastPosition.longitude);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (location, 10000, 10000);

    [self.mapView setRegion:region];
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



