//
//  MapInterfaceController.m
//  VXMetar
//
//  Created by Craig Bennett on 1/7/16.
//  Copyright © 2016 Voxelwise. All rights reserved.
//

#import "MapInterfaceController.h"

@interface MapInterfaceController ()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceMap *mapView;
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

    CLLocationCoordinate2D location = CLLocationCoordinate2DMake (34.4258, 119.7142);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (location, 1000, 1000);

    [_mapView setRegion:region];
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



