//
//  ViewController.m
//  VXMetar
//
//  Created by Craig Bennett on 12/29/15.
//  Copyright © 2015 Voxelwise. All rights reserved.
//

#import "ViewController.h"

#import "VXReportingStationManager.h"

#import <MapKit/MapKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *airportIdentifier;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITextView *metarText;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    _metarText.textContainer.lineBreakMode = NSLineBreakByWordWrapping;

    // Configure interface objects here.
    [_airportIdentifier setText:@"KSBA"];

    [_metarText setText:@"KSBA 160553Z 00000KT 10SM CLR 12/11 A3012 RMK AO2 SLP200 T01220106 10172 20111 53015"];

    VXReportingStationManager *stationManager = [VXReportingStationManager sharedManager];
    CLLocationCoordinate2D lastPosition = [stationManager getLastStationPosition];

    CLLocationCoordinate2D location = CLLocationCoordinate2DMake (lastPosition.latitude, -1 * lastPosition.longitude);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance (location, 10000, 10000);

    [self.mapView setRegion:region];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
