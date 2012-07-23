//
//  ViewController.h
//  quoteGen
//
//  Created by mr.peter on 18.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) NSArray *myQuotes;
@property (nonatomic, retain) NSMutableArray *movieQuotes;
@property (nonatomic, retain) IBOutlet UITextView *quote_text;
@property (nonatomic, retain) IBOutlet UISegmentedControl *quote_opt;

-(IBAction)quote_btn_touch:(id)sender;


@end
