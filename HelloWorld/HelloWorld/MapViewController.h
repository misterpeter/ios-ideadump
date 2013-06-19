//
//  MapViewController.h
//  IdeaDump
//
//  Created by mr.peter on 18.6.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController {

    IBOutlet CLLocationManager *locationManager;

}

- (IBAction)mapTypeChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
