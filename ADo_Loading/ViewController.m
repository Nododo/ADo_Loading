//
//  ViewController.m
//  ADo_Loading
//
//  Created by 杜维欣 on 15/10/26.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "ViewController.h"
#import "ADo_Loading.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ADo_Loading *loading = [[ADo_Loading alloc] init];
    [self.view.layer addSublayer:loading];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"a");
}
@end
