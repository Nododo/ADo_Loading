//
//  ADo_Loading.h
//  ADo_Loading
//
//  Created by 杜维欣 on 15/10/26.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface ADo_Loading : CAShapeLayer
- (void)loading;
+ (void)showInView:(UIView *)view;
@end
