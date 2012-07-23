//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by mr.peter on 25.10.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HelloWorldViewController : UIViewController <UITextFieldDelegate> {
    
    NSString *userName;

}



@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;

@property (nonatomic, copy) NSString *userName;

- (IBAction)changeGreeting:(id)sender;


@end
