//
//  CALayer+CheckBtnLayer.m
//  CheckBtnAnimation
//
//  Created by Bear on 16/3/9.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "CALayer+CheckBtnLayer.h"

@implementation CALayer (CheckBtnLayer)

- (void)ocb_applyAnimation:(CABasicAnimation *)animation
{
    if (animation.fromValue == nil) {
        animation.fromValue = [self.presentationLayer valueForKey:animation.keyPath];
    }
    
    [self addAnimation:animation forKey:animation.keyPath];
    [self setValue:animation.toValue forKey:animation.keyPath];
}

@end
