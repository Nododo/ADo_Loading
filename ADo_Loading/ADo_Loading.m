//
//  ADo_Loading.m
//  ADo_Loading
//
//  Created by 杜维欣 on 15/10/26.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "ADo_Loading.h"
#import "ADo_LoadingLayer.h"
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define loadingWidth kScreenWidth / 2
#define loadingHeight loadingWidth / 2

@implementation ADo_Loading
{
    UIView *_maskView;
    ADo_LoadingLayer *_loadingLayer;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    _maskView = [[UIView alloc] init];
    _maskView.backgroundColor = [UIColor clearColor];
    [self addSubview:_maskView];
    _loadingLayer = [[ADo_LoadingLayer alloc] init];
    [self.layer addSublayer:_loadingLayer];
}

- (void)layoutSubviews
{
    _maskView.frame = self.bounds;
    CGFloat centerX = CGRectGetMidX(self.bounds);
    CGFloat centerY = CGRectGetMidY(self.bounds);
    _loadingLayer.frame = CGRectMake(centerX - loadingWidth / 2,centerY - loadingHeight / 2,loadingWidth, loadingHeight);
}

+ (void)showInView:(UIView *)view
{
    ADo_Loading *loading = [[ADo_Loading alloc] initWithFrame:view.bounds];
    [view addSubview:loading];
}

+ (void)hideForView:(UIView *)view
{
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:self]) {
            [subview removeFromSuperview];
        }
    }
}
@end
