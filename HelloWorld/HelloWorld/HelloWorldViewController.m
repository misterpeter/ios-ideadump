//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by mr.peter on 25.10.11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController

@synthesize userName=_userName, textField=_textFiel, label=_label;


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    
    if (theTextField == self.textField) {
        
        [theTextField resignFirstResponder];
        
    }
    
    return YES;
}

- (BOOL)canBecomeFirstResponder {
    
    return YES;
    
}


//------------- shake the device

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Stop shaking me, damnit!"];
    self.label.text = greeting;    
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
}
//------------- shake ends here


// When Button is pushed, get Textfield and insert to Label
- (IBAction)changeGreeting:(id)sender {
    
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    
    if ([nameString length] == 0) {
        NSString *greeting = [[NSString alloc] initWithFormat:@"Enter your damn name dude!"];
        self.label.text = greeting; 
               
    }
    
    if ([nameString length] != 0) {
        NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
        self.label.text = greeting;
        
    }
}

- (IBAction)history:(id)sender {
}





// enable Device Orientation change
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    if ((interfaceOrientation == UIInterfaceOrientationPortrait) ||
        (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) ||
        (interfaceOrientation == UIInterfaceOrientationLandscapeRight) ||
        (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown))
        return YES;
    
    return NO;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

@end
