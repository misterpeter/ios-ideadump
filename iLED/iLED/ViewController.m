//
//  ViewController.m
//  iLED
//
//  Created by mr.peter on 30.10.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchPressed:(id)sender
{
    UISwitch *theSwitch = (UISwitch *) sender;
    
    
    if (theSwitch.isOn)
    {
        // turn the LED on
        NSURL *url = [NSURL URLWithString:@"http://192.168.2.127/$1"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
    else
    {
        // turn the LED off
        NSURL *url = [NSURL URLWithString:@"http://192.168.2.127/$2"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
}

- (IBAction)switch2Pressed:(id)sender {
    
    UISwitch *theSwitch = (UISwitch *) sender;
    
    
    if (theSwitch.isOn)
    {
        // turn the LED on
        NSURL *url = [NSURL URLWithString:@"http://192.168.2.127/$3"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
    else
    {
        // turn the LED off
        NSURL *url = [NSURL URLWithString:@"http://192.168.2.127/$4"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
    
}
- (IBAction)switch3Pressed:(id)sender {
    
    UISwitch *theSwitch = (UISwitch *) sender;
    
    
    if (theSwitch.isOn)
    {
        // turn the LED on
        NSURL *url = [NSURL URLWithString:@"http://192.168.2.127/$5"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
    else
    {
        // turn the LED off
        NSURL *url = [NSURL URLWithString:@"http://192.168.2.127/$6"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [myWebView loadRequest:req];
    }
}


@end

