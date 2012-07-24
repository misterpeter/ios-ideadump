//
//  imgRateDoc.m
//  imgRate
//
//  Created by mr.peter on 24.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
//

#import "imgRateDoc.h"
#import "imgRateData.h"

@implementation imgRateDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {   
    if ((self = [super init])) {
        self.data = [[imgRateData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end