//
//  ViewController.m
//  quoteGen
//
//  Created by mr.peter on 18.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
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
    
    int array_tot = [self.myQuotes count];
    
    int index = (arc4random() % array_tot);
    
    NSString *my_quote = [self.myQuotes objectAtIndex:index];
    
    self.quote_text.text = [NSString stringWithFormat:@"Quote:\n\n%@", my_quote];
       
   } else {
       
       NSString *selectedCategory = @"classic";
       if (self.quote_opt.selectedSegmentIndex == 1) {
           selectedCategory = @"modern";
       }
       if (self.quote_opt.selectedSegmentIndex== 3) {
           selectedCategory = @"meme";
       }
       
       NSPredicate *predicate = [NSPredicate predicateWithFormat:@"category == %@", selectedCategory];
       NSArray *filteredArray = [self.movieQuotes filteredArrayUsingPredicate:predicate];
       
       int array_tot = [filteredArray count];
       
       if (array_tot > 0) {
           
           int index = (arc4random() % array_tot);
           
           NSString *quote = [[filteredArray objectAtIndex:index] valueForKey:@"quote"];
           NSString *source = [[filteredArray objectAtIndex:index] valueForKey:@"source"];
           if (![source length] == 0) {
               quote = [NSString stringWithFormat:@"%@\n\n(%@)",  quote, source];
           }
           
           
           if ([selectedCategory isEqualToString:@"classic"]) {
               quote = [NSString stringWithFormat:@"From Classic Movie\n\n%@",  quote];
           }
           if ([selectedCategory isEqualToString:@"modern"]) {
               quote = [NSString stringWithFormat:@"From Modern Movie\n\n%@",  quote];
           }
           if ([selectedCategory isEqualToString:@"meme"]) {
                quote = [NSString stringWithFormat:@"From Meme\n\n%@",  quote];
                   
                   

           } else {
               quote = [NSString stringWithFormat:@"Quote:\n\n%@",  quote];
           }
           if ([source hasPrefix:@"Phil"]) {
               quote = [NSString stringWithFormat:@"Fry ROCKS!!\n\n%@",  quote];
           }
           self.quote_text.text = quote;
           
       } else {
           self.quote_text.text = [NSString stringWithFormat:@"No quotes to display."];
       }
       
       
       
   }
    
    
}

@end
