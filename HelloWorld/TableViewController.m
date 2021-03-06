//
//  TableViewController.m
//  IdeaDump
//
//  Created by peter on 21.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
        
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/chiptune.wav", [[NSBundle mainBundle] resourcePath]]];
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    audioPlayer.volume = 0.1;
	audioPlayer.numberOfLoops = -1;

	[audioPlayer play];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [audioPlayer stop];
    audioPlayer.currentTime = 0;
}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    
    self.navigationController.toolbarHidden = YES;
    
    [audioPlayer play];
    
}





@end
