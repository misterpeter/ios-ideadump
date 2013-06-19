//
//  SecondViewController.h
//  HelloWorld
//
//  Created by peter on 17.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameViewController.h"

@interface TextViewController : UIViewController <UITextViewDelegate>
@property (retain, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *textViewLabel;






@end
