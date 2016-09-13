//
//  ViewController.m
//  USESDKDEMO
//
//  Created by Ibokan2 on 16/9/13.
//  Copyright © 2016年 Ibokan2. All rights reserved.
//

#import "ViewController.h"
#import "sdk.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeSystem];
    myButton.frame = CGRectMake(20, 20, 60, 60);
    [myButton setTitle:@"弹出" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
}
-(void)add{
    sdk *mysdk = [sdk new];
    UIAlertController *alertController = [mysdk firstString:@"ok" firstStyle:UIAlertActionStyleDefault secondString:@"cancel" secondStyle:UIAlertActionStyleCancel thirdString:@"destructive" thirdStyle:UIAlertActionStyleDestructive];
    [self presentViewController:alertController animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
