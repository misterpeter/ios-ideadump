//
//  TimeViewController.h
//  IdeaDump
//
//  Created by peter on 20.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *alertMessageField;
@property (weak, nonatomic) IBOutlet UILabel *alertNotification;

- (IBAction)addNotification;
- (IBAction)dismissKeyboard;


@end
