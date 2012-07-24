//
//  imgRateDoc.h
//  imgRate
//
//  Created by mr.peter on 24.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
//

#import <Foundation/Foundation.h>

@class imgRateData;

@interface imgRateDoc : NSObject

@property (strong) imgRateData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end
