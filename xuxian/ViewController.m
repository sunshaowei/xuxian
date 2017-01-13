//
//  ViewController.m
//  xuxian
//
//  Created by kuanter on 2017/1/13.
//  Copyright © 2017年 kuanter. All rights reserved.
//

#import "ViewController.h"
#import "xuxian.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    xuxian*xuLingV=[[xuxian alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    xuLingV.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:xuLingV];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
