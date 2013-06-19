//
//  SecondViewController.m
//  IdeaDump
//
//  Created by peter on 17.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

@synthesize textView;
@synthesize textViewLabel;

- (IBAction)saveText
{   
    
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"myfile.plist"];
    NSError *error = nil;
    
    NSString *text = textView.text;
    if (![text writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error]) {
        NSLog(@"Error saving - %@", error);
    }
    
    [textView resignFirstResponder];
}

- (void) readFromPlist {
   
    NSString *documentsDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"myfile.plist"];
    NSError *error = nil;

    NSString *text = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (!text) {
        NSLog(@"Error reading - %@", error);
    }
    
    textView.text = text;
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
    
}

- (void)viewDidLoad
{
    textViewLabel.text = @"Enter your Text here:";
    [self readFromPlist];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
