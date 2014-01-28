//
//  MOWhiteButton.m
//  Demo
//
//  Created by Ryan Jones on 1/27/14.
//  Copyright (c) 2014 Psychomomo. All rights reserved.
//

#import "MOWhiteButton.h"

@implementation MOWhiteButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    //// Frames
    CGRect frame = CGRectMake(0, 0, 44, 44);
    
    
    //// Rounded Rectangle Drawing
    UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame), 44, 44) cornerRadius: 10];
    [[UIColor colorWithWhite:1. alpha:.8] setFill];
    [roundedRectanglePath fill];
}


@end
