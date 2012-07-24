//
//  AppDelegate.m
//  imgRate
//
//  Created by mr.peter on 24.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "imgRateDoc.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    imgRateDoc *img1 = [[imgRateDoc alloc] initWithTitle:@"Girl 1" rating:4 thumbImage:[UIImage imageNamed:@"imgRate1_thumb.jpg"] fullImage:[UIImage imageNamed:@"imgRate1.jpg"]];
    
    imgRateDoc *img2 = [[imgRateDoc alloc] initWithTitle:@"Girl 2" rating:3 thumbImage:[UIImage imageNamed:@"imgRate2_thumb.jpg"] fullImage:[UIImage imageNamed:@"imgRate2.jpg"]];
    
    imgRateDoc *img3 = [[imgRateDoc alloc] initWithTitle:@"Girl 3" rating:5 thumbImage:[UIImage imageNamed:@"imgRate3_thumb.jpg"] fullImage:[UIImage imageNamed:@"imgRate3.jpg"]];
    
    imgRateDoc *img4 = [[imgRateDoc alloc] initWithTitle:@"Girl 4" rating:2 thumbImage:[UIImage imageNamed:@"imgRate4_thumb.jpg"] fullImage:[UIImage imageNamed:@"imgRate4.jpg"]];
    
    imgRateDoc *img5 = [[imgRateDoc alloc] initWithTitle:@"Girl 5" rating:5 thumbImage:[UIImage imageNamed:@"imgRate5_thumb.jpg"] fullImage:[UIImage imageNamed:@"imgRate5.jpg"]];
    
    
    NSMutableArray *imgs = [NSMutableArray arrayWithObjects:img1, img2, img3, img4, img5, nil];
    
    UINavigationController * navController = (UINavigationController *) self.window.rootViewController;
    MasterViewController * masterController = [navController.viewControllers objectAtIndex:0];
    masterController.imgs = imgs;
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
