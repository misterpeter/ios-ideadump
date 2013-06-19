//
//  SecondViewController.m
//  HelloWorld
//
//  Created by peter on 17.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

@synthesize textView;




- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    textView.text = @"BLAAAAAAA";
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
