//
//  MapViewController.m
//  IdeaDump
//
//  Created by mr.peter on 18.6.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize toolbar, mapView;



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
    
    [super viewDidLoad];    
    
    MKUserTrackingBarButtonItem *trackingButton = [[MKUserTrackingBarButtonItem alloc] initWithMapView:mapView];    
    
    [self.toolbar setItems:[NSArray arrayWithObject:trackingButton]];
    
    

	// Do any additional setup after loading the view.
}








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {    
    
//    locationManager = [[CLLocationManager alloc] init];
//    locationManager.distanceFilter = kCLDistanceFilterNone; // location while moving
//    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
//    
//    CLLocationCoordinate2D zoomLocation;
//    zoomLocation.latitude = locationManager.location.coordinate.latitude;
//    zoomLocation.longitude= locationManager.location.coordinate.longitude;
//
//    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.3, 0.3);
//    
//    [_mapView setRegion:viewRegion animated:YES];
//    [_mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
//    [_mapView setUserTrackingMode:MKUserTrackingModeFollowWithHeading animated:YES];

}



@end
