//
//  MapViewController.m
//  IdeaDump
//
//  Created by mr.peter on 18.6.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "MapViewController.h"
#define METERS_PER_MILE 1609.355

@interface MapViewController ()

@end

@implementation MapViewController

- (IBAction)mapTypeChanged:(id)sender {
    
    switch (self.segment.selectedSegmentIndex) {
        case 0:
            NSLog(@"map pushed");
            self.mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            NSLog(@"hybrid pushed");
            self.mapView.mapType = MKMapTypeHybrid;
            break;
        case 2:
            NSLog(@"satellite pushed");
            self.mapView.mapType = MKMapTypeSatellite;
            break;
        default:
            break;
    }
}

- (void)viewDidLoad
{
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.distanceFilter = kCLDistanceFilterNone; // location while moving
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {    
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = locationManager.location.coordinate.latitude;
    zoomLocation.longitude= locationManager.location.coordinate.longitude;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.3*METERS_PER_MILE, 0.3*METERS_PER_MILE);
    
    [_mapView setRegion:viewRegion animated:YES];
    [_mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];    
    
}

@end
