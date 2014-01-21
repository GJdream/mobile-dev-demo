//
//  MOBlueTextField.m
//  Demo
//
//  Created by Ryan Jones on 1/21/14.
//  Copyright (c) 2014 Psychomomo. All rights reserved.
//

#import "MOBlueTextField.h"

@implementation MOBlueTextField

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
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* blueDark = [UIColor colorWithRed: 0.302 green: 0.663 blue: 0.867 alpha: 0.9];
    UIColor* blueLight = [UIColor colorWithRed: 0.49 green: 0.788 blue: 0.922 alpha: 0.9];
    UIColor* blueStroke = [UIColor colorWithRed: 0.29 green: 0.553 blue: 0.702 alpha: 1];
    
    //// Gradient Declarations
    NSArray* blueColors = [NSArray arrayWithObjects:
                           (id)blueLight.CGColor,
                           (id)blueDark.CGColor, nil];
    CGFloat blueLocations[] = {0, 1};
    CGGradientRef blue = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)blueColors, blueLocations);
    
    //// Frames
    CGRect frame = self.bounds;
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.00000 + 0.5), CGRectGetWidth(frame), floor(CGRectGetHeight(frame) * 1.00000 + 0.5) - floor(CGRectGetHeight(frame) * 0.00000 + 0.5))];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    UIBezierPath* rectangleRotatedPath = [rectanglePath copy];
    CGAffineTransform rectangleTransform = CGAffineTransformMakeRotation(111*(-M_PI/180));
    [rectangleRotatedPath applyTransform: rectangleTransform];
    CGRect rectangleBounds = CGPathGetPathBoundingBox(rectangleRotatedPath.CGPath);
    rectangleTransform = CGAffineTransformInvert(rectangleTransform);
    
    CGContextDrawLinearGradient(context, blue,
                                CGPointApplyAffineTransform(CGPointMake(CGRectGetMinX(rectangleBounds), CGRectGetMidY(rectangleBounds)), rectangleTransform),
                                CGPointApplyAffineTransform(CGPointMake(CGRectGetMaxX(rectangleBounds), CGRectGetMidY(rectangleBounds)), rectangleTransform),
                                0);
    CGContextRestoreGState(context);
    [blueStroke setStroke];
    rectanglePath.lineWidth = 0.5;
    [rectanglePath stroke];
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98864 * CGRectGetHeight(frame))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 1.00000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.98864 * CGRectGetHeight(frame))];
    [[UIColor whiteColor] setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
    
    //// Cleanup
    CGGradientRelease(blue);
    CGColorSpaceRelease(colorSpace);
    

}


@end
