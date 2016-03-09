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
    
    CheckBtn *checkBtn = [[CheckBtn alloc] initWithFrame:CGRectMake(50, 200, 300, 200)];
    checkBtn.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.6];
    [self.view addSubview:checkBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
