//
//  ADo_Loading.m
//  ADo_Loading
//
//  Created by 杜维欣 on 15/10/26.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "ADo_LoadingLayer.h"

#define LineWith 4.f


@interface ADo_LoadingLayer()

@end

@implementation ADo_LoadingLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:.9f alpha:.9f].CGColor;
    }
    return self;
}

- (void)layoutSublayers
{
    
    CGFloat centerX = CGRectGetMidX(self.bounds);
    CGFloat centerY = CGRectGetMidY(self.bounds);
    CGFloat cornerRadius = CGRectGetHeight(self.bounds) / 4;
    
    UIBezierPath *roundPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(centerX - cornerRadius , centerY - cornerRadius, cornerRadius * 2, cornerRadius * 2) cornerRadius:cornerRadius];
    self.path = roundPath.CGPath;
    self.strokeColor = [UIColor greenColor].CGColor;
    self.fillColor = [UIColor clearColor].CGColor;
    self.lineWidth = LineWith;
    self.lineCap = kCALineCapRound;
    [self loading];
}

- (void)loading
{
    CABasicAnimation *start = [CABasicAnimation animationWithKeyPath:@"strokeStart"];
    start.fromValue = @(-.5f);
    start.toValue = @(1.f);
    CABasicAnimation *end = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    end.fromValue = @(0.f);
    end.toValue = @(1.f);
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[start,end];
    group.duration = 1.f;
    group.repeatCount = MAXFLOAT;
    [self addAnimation:group forKey:nil];
}



@end
