//
//  InterfaceController.m
//  VXMetar WatchKit Extension
//
//  Created by Craig Bennett on 12/29/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *airportIdentifier;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *metarText;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];

    // Configure interface objects here.
    [_airportIdentifier setTitle:@"KSBA"];
    [_metarText setText:@"300553Z\n00000KT\n10SM\nCLR\n04/M01\nA3011\nRMK\nAO2\nSLP197\nT00441011\n10144\n20033\n53017"];
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



