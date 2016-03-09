//
//  CheckBtn.m
//  CheckBtnAnimation
//
//  Created by Bear on 16/3/9.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "CheckBtn.h"

@interface CheckBtn ()
{
    CAShapeLayer *checkShapeLayer;
}

@end

@implementation CheckBtn

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) {
        self = nil;
    }
    
    checkShapeLayer = [CAShapeLayer layer];
    checkShapeLayer.path = [self checkPath];
    checkShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
    
    checkShapeLayer.strokeEnd = 0.8;
    checkShapeLayer.fillColor = [UIColor clearColor].CGColor;
    
    [self.layer addSublayer:checkShapeLayer];
    
    self.showCheck = NO;
    
    return self;
}

@synthesize showCheck = _showCheck;
- (void)setShowCheck:(BOOL)showCheck
{
    
}

- (CGPathRef)checkPath
{
    UIBezierPath* oval1DrawPath = UIBezierPath.bezierPath;
    [oval1DrawPath moveToPoint: CGPointMake(185.89, 69.19)];
    [oval1DrawPath addLineToPoint: CGPointMake(115.95, 127.99)];
    [oval1DrawPath addLineToPoint: CGPointMake(47.91, 48.95)];
    [oval1DrawPath addCurveToPoint: CGPointMake(51.03, 43.75) controlPoint1: CGPointMake(47.91, 48.95) controlPoint2: CGPointMake(49.24, 46.56)];
    [oval1DrawPath addCurveToPoint: CGPointMake(54.85, 38.24) controlPoint1: CGPointMake(52.07, 42.13) controlPoint2: CGPointMake(53.42, 40.21)];
    [oval1DrawPath addCurveToPoint: CGPointMake(63.82, 27.71) controlPoint1: CGPointMake(57.59, 34.45) controlPoint2: CGPointMake(61.17, 30.32)];
    [oval1DrawPath addCurveToPoint: CGPointMake(75.93, 17.55) controlPoint1: CGPointMake(66.7, 24.89) controlPoint2: CGPointMake(71.37, 20.78)];
    [oval1DrawPath addCurveToPoint: CGPointMake(86.36, 11.06) controlPoint1: CGPointMake(81.28, 13.76) controlPoint2: CGPointMake(86.36, 11.06)];
    [oval1DrawPath addCurveToPoint: CGPointMake(174.13, 10.35) controlPoint1: CGPointMake(86.36, 11.06) controlPoint2: CGPointMake(127.38, -13.47)];
    [oval1DrawPath addCurveToPoint: CGPointMake(215.65, 138.13) controlPoint1: CGPointMake(220.88, 34.17) controlPoint2: CGPointMake(239.47, 91.38)];
    [oval1DrawPath addCurveToPoint: CGPointMake(87.87, 179.65) controlPoint1: CGPointMake(191.83, 184.88) controlPoint2: CGPointMake(134.62, 203.47)];
    [oval1DrawPath addCurveToPoint: CGPointMake(36.71, 106.64) controlPoint1: CGPointMake(59.11, 164.99) controlPoint2: CGPointMake(40.48, 137.05)];
    [oval1DrawPath addCurveToPoint: CGPointMake(36.09, 91.75) controlPoint1: CGPointMake(36.1, 101.73) controlPoint2: CGPointMake(35.87, 96.75)];
    [oval1DrawPath addCurveToPoint: CGPointMake(38.45, 73.66) controlPoint1: CGPointMake(36.36, 85.73) controlPoint2: CGPointMake(37.04, 79.64)];
    [oval1DrawPath addCurveToPoint: CGPointMake(42.12, 61.25) controlPoint1: CGPointMake(38.62, 72.97) controlPoint2: CGPointMake(39.94, 66.98)];
    [oval1DrawPath addCurveToPoint: CGPointMake(47.75, 49.25) controlPoint1: CGPointMake(44.24, 55.64) controlPoint2: CGPointMake(47.7, 49.35)];
    
    CGPathRef pathRef = oval1DrawPath.CGPath;
    return pathRef;
}

@end
