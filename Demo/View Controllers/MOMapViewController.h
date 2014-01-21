//
//  MOMapViewController.h
//  Demo
//
//  Created by Ryan Jones on 1/21/14.
//  Copyright (c) 2014 Psychomomo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MOMapViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
