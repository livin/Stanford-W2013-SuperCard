//
//  PlayingCardView.m
//  SuperCard
//
//  Created by Vladimir on 19.05.13.
//  Copyright (c) 2013 Vladimir Livin. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{    
    UIBezierPath* roundedRect = [UIBezierPath bezierPathWithRoundedRect: self.bounds cornerRadius: 9.0];
    [[UIColor whiteColor] setFill];
    [roundedRect fill];
}

@end
