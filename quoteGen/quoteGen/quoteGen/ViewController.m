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
@synthesize quote_opt;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1 - Qotes as internal array
	self.myQuotes = [NSArray arrayWithObjects:
                     @"Yay this rocks",
                     @"Yup, still rocking",
                     @"I like this alot",
                     @"Nobody's perfect",
                     @"blablabla quote",
                     nil];
    
    // 2 - Load movie quotes from plist
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.movieQuotes = [[NSMutableArray arrayWithContentsOfFile:plistCatPath] copy];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    movieQuotes=nil;
    myQuotes=nil;
    quote_text=nil;
    quote_opt=nil;
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
    
   if (self.quote_opt.selectedSegmentIndex == 2) {
    // 1 - Get numbers of rows in array
    int array_tot = [self.myQuotes count];
    // 2 - Get random index
    int index = (arc4random() % array_tot);
    // 3 - Get the quote string for the index
    //NSString *my_quote = [[self.movieQuotes objectAtIndex:index] valueForKey:@"quote"];
    NSString *my_quote = [self.myQuotes objectAtIndex:index];
    // 4 - Display the quote in the text view
    self.quote_text.text = [NSString stringWithFormat:@"Quote:\n\n%@", my_quote];
       
   } else {
       // 2.1 - determine category
       NSString *selectedCategory = @"classic";
       if (self.quote_opt.selectedSegmentIndex == 1) {
           selectedCategory = @"modern";
       }
       // 2.2 - filter array by category using predicate
       NSPredicate *predicate = [NSPredicate predicateWithFormat:@"category == %@", selectedCategory];
       NSArray *filteredArray = [self.movieQuotes filteredArrayUsingPredicate:predicate];
       // 2.3 - get total number in filtered array
       int array_tot = [filteredArray count];
       // 2.4 - as a safeguard only get quote when the array has rows in it
       if (array_tot > 0) {
           // 2.5 - get random index
           int index = (arc4random() % array_tot);
           // 2.6 - get the quote string for the index 
           NSString *quote = [[filteredArray objectAtIndex:index] valueForKey:@"quote"];
           self.quote_text.text = [NSString stringWithFormat:@"Movie Quote:\n\n%@",  quote];
       } else {
           self.quote_text.text = [NSString stringWithFormat:@"No quotes to display."];
       }
   }
}

@end
