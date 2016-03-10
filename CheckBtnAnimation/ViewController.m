//
//  ViewController.m
//  CheckBtnAnimation
//
//  Created by Bear on 16/3/9.
//  Copyright © 2016年 Bear. All rights reserved.
//

#import "ViewController.h"
#import "CheckBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    CheckBtn *checkBtn = [[CheckBtn alloc] initWithFrame:CGRectMake(150, 200, 39, 39)];
    [checkBtn addTarget:self action:@selector(checkBtnEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkBtn];
}

- (void)checkBtnEvent:(CheckBtn *)btn
{
    btn.showCheck = !btn.showCheck;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
