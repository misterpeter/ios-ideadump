//
//  ViewController.h
//  IdeaDump
//
//  Created by peter on 14.06.13.
//  Copyright (c) 2013 Santhi Peter Morschhaeuser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface GameViewController : UIViewController <UIAlertViewDelegate> {
    
    AVAudioPlayer *audioPlayer;
   
    IBOutlet UILabel *wtfLabel;
    
    NSInteger count;
    
}

- (IBAction)buttonPressed;

- (IBAction)handlePan:(UIPanGestureRecognizer*) recognizer;

@end
