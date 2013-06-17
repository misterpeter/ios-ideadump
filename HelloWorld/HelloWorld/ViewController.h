//
//  ViewController.h
//  HelloWorld
//
//  Created by peter on 14.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <UIAlertViewDelegate> {
    
    IBOutlet UILabel *wtfLabel;
    
    NSInteger count;
    
}

- (IBAction)buttonPressed;

- (IBAction)handlePan:(UIPanGestureRecognizer*) recognizer;

@end
