//
//  ADo_Loading.m
//  ADo_Loading
//
//  Created by 杜维欣 on 15/10/26.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "ADo_Loading.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define CornerRadius 40
#define LineWith 4


@interface ADo_Loading()

@end

@implementation ADo_Loading

- (instancetype)init
{
    if (self = [super init]) {
        [self setUp];
    }
    return self;
}


- (void)setUp
{
    
    CGFloat width = CornerRadius * 4;
    CGFloat height = CornerRadius * 3;
    self.frame = CGRectMake(SCREEN_WIDTH  / 2 - width / 2, SCREEN_HEIGHT / 2 - height / 2, width, height);
//    self.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.5].CGColor;
    UIBezierPath *roundPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(CornerRadius, CornerRadius / 2, CornerRadius * 2, CornerRadius * 2) cornerRadius:CornerRadius];
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
    start.fromValue = @(-0.5);
    start.toValue = @(1);
    CABasicAnimation *end = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    end.fromValue = @(0);
    end.toValue = @(1);
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.animations = @[start,end];
    group.duration = 1.f;
    group.repeatCount = MAXFLOAT;
    [self addAnimation:group forKey:nil];
}

+ (void)showInView:(UIView *)view
{
    
}
@end
