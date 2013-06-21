//
//  TimeViewController.m
//  IdeaDump
//
//  Created by peter on 20.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "TimeViewController.h"

@interface TimeViewController ()

@end

@implementation TimeViewController

@synthesize datePicker;
@synthesize alertMessageField;
@synthesize alertNotification;



- (IBAction)dismissKeyboard
{    
    [alertMessageField resignFirstResponder];
}

- (IBAction)addNotification
{
        
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:[datePicker countDownDuration]];
    localNotification.alertAction = NSLocalizedString(@"Read Message", nil);
    localNotification.soundName = @"smb.wav";
    localNotification.alertBody = [alertMessageField text];
    localNotification.hasAction = YES;
    localNotification.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber]+1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    
    
    
    [self dismissViewControllerAnimated:YES completion:nil];

    [alertNotification setHidden:NO];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];   
}

- (void)viewDidLoad
{
    
    

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
