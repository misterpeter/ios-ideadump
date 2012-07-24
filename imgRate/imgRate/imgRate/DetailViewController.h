//
//  DetailViewController.h
//  imgRate
//
//  Created by mr.peter on 24.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
