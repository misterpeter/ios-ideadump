//
//  ViewController.m
//  IdeaDump
//
//  Created by peter on 14.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/amazinghorse.wav", [[NSBundle mainBundle] resourcePath]]];
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    audioPlayer.volume = 0.5;
	audioPlayer.numberOfLoops = -1;
	
	if (audioPlayer == nil)
		NSLog([error description]);
	else
		[audioPlayer play];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
    [self restartApp];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed {
    
    count++;
    
    wtfLabel.text = [NSString stringWithFormat:@"WTF Score\n%i", count];
    
    if (count == 10) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"omgwtfbbq"
                                                        message:@"You have no life."
                                                       delegate:self
                                              cancelButtonTitle:@"Start over again"
                                              otherButtonTitles:nil];
        [alert show];
    }
}


- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x,
                                         recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
}


- (void)restartApp {
    
    count = 0;
    wtfLabel.text = @"WTF Score\n0";
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self restartApp];
}


@end
