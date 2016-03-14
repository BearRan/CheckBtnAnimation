//
//  CheckBtn.m
//  CheckBtnAnimation
//
//  Created by Bear on 16/3/9.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "CheckBtn.h"
#import "CALayer+CheckBtnLayer.h"

static CGFloat checkStrokeStart     = 0.038;
static CGFloat checkStrokeEnd       = 0.195;
static CGFloat circleStrokeStart    = 0.28;
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
    
    //self.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.6];
    
    self.layer.borderWidth = 3.0f;
    self.layer.cornerRadius = self.frame.size.width/2.0;
    self.layer.borderColor = [[UIColor whiteColor] colorWithAlphaComponent:0.3].CGColor;
    
    checkShapeLayer = [CAShapeLayer layer];
    checkShapeLayer.path = [self checkPath];
    checkShapeLayer.lineWidth = 3.0f;
    checkShapeLayer.lineCap = kCALineCapRound;
    checkShapeLayer.lineJoin = kCALineJoinRound;
    checkShapeLayer.strokeColor = [UIColor whiteColor].CGColor;
    checkShapeLayer.fillColor = [UIColor clearColor].CGColor;
    checkShapeLayer.actions = [[NSDictionary alloc] initWithObjectsAndKeys:
                     [NSNull null],@"strokeStart",[NSNull null],@"strokeEnd", nil];
    
    [self.layer addSublayer:checkShapeLayer];
    
    self.showCheck = NO;
    
    return self;
}



@synthesize showCheck = _showCheck;
- (void)setShowCheck:(BOOL)showCheck
{
    _showCheck = showCheck;
    
    CABasicAnimation *strokeStart = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
    CABasicAnimation *strokeEnd = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    
    if (self.showCheck) {
    
        strokeStart.toValue = [NSNumber numberWithFloat:checkStrokeStart];
        strokeStart.duration = 0.5;
        strokeStart.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.4 :0.3 :1.6];

        strokeEnd.toValue = [NSNumber numberWithFloat:checkStrokeEnd];
        strokeEnd.duration = 0.6;
        strokeEnd.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.15 :0.6 :0.6 :1];
    }else{
    
        strokeStart.toValue = [NSNumber numberWithFloat:circleStrokeStart];
        strokeStart.duration = 0.5;
        strokeStart.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :-0.4 :0.58 :0.88];

        strokeEnd.toValue = [NSNumber numberWithFloat:circleStrokeEnd];
        strokeEnd.duration = 0.7;
        strokeEnd.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :-0.08 :0.64 :0.1];
    }
    
    [checkShapeLayer ocb_applyAnimation:strokeStart];
    [checkShapeLayer ocb_applyAnimation:strokeEnd];
}

- (CGPathRef)checkPath
{
    UIBezierPath* oval1DrawPath = UIBezierPath.bezierPath;
    [oval1DrawPath moveToPoint: CGPointMake(33.85, 11.21)];
    [oval1DrawPath addLineToPoint: CGPointMake(16.5, 26.07)];
    [oval1DrawPath addLineToPoint: CGPointMake(2.95, 10.33)];
    [oval1DrawPath addCurveToPoint: CGPointMake(3.57, 9.3) controlPoint1: CGPointMake(2.95, 10.33) controlPoint2: CGPointMake(3.21, 9.86)];
    [oval1DrawPath addCurveToPoint: CGPointMake(4.33, 8.2) controlPoint1: CGPointMake(3.77, 8.98) controlPoint2: CGPointMake(4.04, 8.59)];
    [oval1DrawPath addCurveToPoint: CGPointMake(6.12, 6.11) controlPoint1: CGPointMake(4.87, 7.45) controlPoint2: CGPointMake(5.59, 6.62)];
    [oval1DrawPath addCurveToPoint: CGPointMake(8.53, 4.08) controlPoint1: CGPointMake(6.69, 5.54) controlPoint2: CGPointMake(7.62, 4.72)];
    [oval1DrawPath addCurveToPoint: CGPointMake(10.6, 2.79) controlPoint1: CGPointMake(9.59, 3.33) controlPoint2: CGPointMake(10.6, 2.79)];
    [oval1DrawPath addCurveToPoint: CGPointMake(28.09, 2.65) controlPoint1: CGPointMake(10.6, 2.79) controlPoint2: CGPointMake(18.78, -2.09)];
    [oval1DrawPath addCurveToPoint: CGPointMake(36.36, 28.09) controlPoint1: CGPointMake(37.4, 7.39) controlPoint2: CGPointMake(41.1, 18.78)];
    [oval1DrawPath addCurveToPoint: CGPointMake(10.91, 36.36) controlPoint1: CGPointMake(31.61, 37.4) controlPoint2: CGPointMake(20.22, 41.1)];
    [oval1DrawPath addCurveToPoint: CGPointMake(0.71, 21.82) controlPoint1: CGPointMake(5.18, 33.44) controlPoint2: CGPointMake(1.47, 27.88)];
    [oval1DrawPath addCurveToPoint: CGPointMake(0.59, 18.86) controlPoint1: CGPointMake(0.59, 20.84) controlPoint2: CGPointMake(0.55, 19.85)];
    [oval1DrawPath addCurveToPoint: CGPointMake(1.06, 15.25) controlPoint1: CGPointMake(0.64, 17.66) controlPoint2: CGPointMake(0.78, 16.45)];
    [oval1DrawPath addCurveToPoint: CGPointMake(1.79, 12.78) controlPoint1: CGPointMake(1.09, 15.12) controlPoint2: CGPointMake(1.36, 13.92)];
    [oval1DrawPath addCurveToPoint: CGPointMake(2.91, 10.39) controlPoint1: CGPointMake(2.22, 11.67) controlPoint2: CGPointMake(2.9, 10.41)];
    
    CGPathRef pathRef = oval1DrawPath.CGPath;
    return pathRef;
}

@end
