//
//  imgRateData.m
//  imgRate
//
//  Created by mr.peter on 24.07.12.
//  Copyright (c) 2012 misterpeter. All rights reserved.
//

#import "imgRateData.h"

@implementation imgRateData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
