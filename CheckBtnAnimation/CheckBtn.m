//
//  CheckBtn.m
//  CheckBtnAnimation
//
//  Created by Bear on 16/3/9.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "CheckBtn.h"
#import "CALayer+CheckBtnLayer.h"

static CGFloat checkStrokeStart     = 0.0;
static CGFloat checkStrokeEnd       = 0.18;
static CGFloat circleStrokeStart    = 0.25;
static CGFloat circleStrokeEnd      = 1;

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
    
    self.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.6];
    
    checkShapeLayer = [CAShapeLayer layer];
    checkShapeLayer.path = [self checkPath];
    checkShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
    checkShapeLayer.fillColor = [UIColor clearColor].CGColor;
    
//    checkShapeLayer.strokeStart = checkStrokeStart;
//    checkShapeLayer.strokeEnd = checkStrokeEnd;
    
    checkShapeLayer.strokeStart = circleStrokeStart;
    checkShapeLayer.strokeEnd = circleStrokeEnd;
    
    [self.layer addSublayer:checkShapeLayer];
    
//    self.showCheck = YES;
    
    return self;
}

@synthesize showCheck = _showCheck;
- (void)setShowCheck:(BOOL)showCheck
{
    CABasicAnimation *strokeStart = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
    CABasicAnimation *strokeEnd = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
    if (self.showCheck) {
    
        strokeStart.toValue = [NSNumber numberWithFloat:checkStrokeStart];
        strokeStart.duration = 0.5;
//        strokeStart.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :-0.4 :0.5 :1]
        strokeStart.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        strokeEnd.toValue = [NSNumber numberWithFloat:checkStrokeEnd];
        strokeEnd.duration = 0.6;
        strokeEnd.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    }else{
    
        strokeStart.toValue = [NSNumber numberWithFloat:circleStrokeStart];
        strokeStart.duration = 0.5;
        strokeStart.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        strokeEnd.toValue = [NSNumber numberWithFloat:circleStrokeEnd];
        strokeEnd.duration = 0.6;
        strokeStart.timingFunction  =[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    }
    
    [checkShapeLayer ocb_applyAnimation:strokeStart];
    [checkShapeLayer ocb_applyAnimation:strokeEnd];
}

- (CGPathRef)checkPath
{
    UIBezierPath* oval1DrawPath = UIBezierPath.bezierPath;
    [oval1DrawPath moveToPoint: CGPointMake(156.43, 86.36)];
    [oval1DrawPath addLineToPoint: CGPointMake(142.5, 98.07)];
    [oval1DrawPath addLineToPoint: CGPointMake(128.95, 82.33)];
    [oval1DrawPath addCurveToPoint: CGPointMake(129.57, 81.3) controlPoint1: CGPointMake(128.95, 82.33) controlPoint2: CGPointMake(129.21, 81.86)];
    [oval1DrawPath addCurveToPoint: CGPointMake(130.33, 80.2) controlPoint1: CGPointMake(129.78, 80.98) controlPoint2: CGPointMake(130.04, 80.59)];
    [oval1DrawPath addCurveToPoint: CGPointMake(132.12, 78.11) controlPoint1: CGPointMake(130.88, 79.45) controlPoint2: CGPointMake(131.59, 78.63)];
    [oval1DrawPath addCurveToPoint: CGPointMake(134.53, 76.08) controlPoint1: CGPointMake(132.69, 77.54) controlPoint2: CGPointMake(133.62, 76.72)];
    [oval1DrawPath addCurveToPoint: CGPointMake(136.61, 74.79) controlPoint1: CGPointMake(135.59, 75.33) controlPoint2: CGPointMake(136.61, 74.79)];
    [oval1DrawPath addCurveToPoint: CGPointMake(154.09, 74.65) controlPoint1: CGPointMake(136.61, 74.79) controlPoint2: CGPointMake(144.78, 69.91)];
    [oval1DrawPath addCurveToPoint: CGPointMake(162.36, 100.09) controlPoint1: CGPointMake(163.4, 79.39) controlPoint2: CGPointMake(167.11, 90.78)];
    [oval1DrawPath addCurveToPoint: CGPointMake(136.91, 108.36) controlPoint1: CGPointMake(157.62, 109.4) controlPoint2: CGPointMake(146.22, 113.1)];
    [oval1DrawPath addCurveToPoint: CGPointMake(126.72, 93.82) controlPoint1: CGPointMake(131.18, 105.44) controlPoint2: CGPointMake(127.47, 99.88)];
    [oval1DrawPath addCurveToPoint: CGPointMake(126.59, 90.86) controlPoint1: CGPointMake(126.59, 92.84) controlPoint2: CGPointMake(126.55, 91.85)];
    [oval1DrawPath addCurveToPoint: CGPointMake(127.06, 87.26) controlPoint1: CGPointMake(126.65, 89.66) controlPoint2: CGPointMake(126.78, 88.45)];
    [oval1DrawPath addCurveToPoint: CGPointMake(127.79, 84.78) controlPoint1: CGPointMake(127.1, 87.12) controlPoint2: CGPointMake(127.36, 85.92)];
    [oval1DrawPath addCurveToPoint: CGPointMake(128.92, 82.39) controlPoint1: CGPointMake(128.22, 83.67) controlPoint2: CGPointMake(128.91, 82.41)];
    
    CGPathRef pathRef = oval1DrawPath.CGPath;
    return pathRef;
}

@end
