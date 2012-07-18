//
//  ViewController.m
//  quoteGen
//
//  Created by mr.peter on 18.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize myQuotes;
@synthesize movieQuotes;
@synthesize quote_text;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.myQuotes = [NSArray arrayWithObjects:
                     @"Yay this rocks",
                     @"Yup, still rocking",
                     @"I like this alot",
                     @"Nobody's perfect",
                     @"blablabla quote",
                     nil];
    
    // 2 - Load movie quotes
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.movieQuotes = [[NSMutableArray arrayWithContentsOfFile:plistCatPath] copy];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    movieQuotes=nil;
    myQuotes=nil;
    quote_text=nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)quote_btn_touch:(id)sender {
    // 1 - Get numbers of rows in array
    int array_tot = [self.movieQuotes count];
    // 2 - Get random index
    int index = (arc4random() % array_tot);
    // 3 - Get the quote string for the index
    NSString *my_quote = [[self.movieQuotes objectAtIndex:index] valueForKey:@"quote"];
    //NSString *my_quote = [self.myQuotes objectAtIndex:index];
    // 4 - Display the quote in the text view
    self.quote_text.text = [NSString stringWithFormat:@"Quote:\n\n%@", my_quote];
}

@end
