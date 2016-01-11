//
//  ViewController.m
//  UI_02_02_01
//
//  Created by ibokan on 16/1/11.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "ViewController.h"
int logtag = 0;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor redColor];
//     view.frame = CGRectMake(0, 0, 20, 20);
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view];
    //Top->Self.View.Top 1 20
    NSLayoutConstraint *constraint1 = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
    //Left->self.view.Left 1 20
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:20];
    //Height->self.view.heigth 0.5 0
//    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:30];
    //Right->self.view.Right 1 -30
    NSLayoutConstraint *constranint4 = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:-30];
    NSLayoutConstraint *constranint4 = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:30];
    [self.view addConstraint:constraint1];
    [self.view addConstraint:constraint2];
//    [self.view addConstraint:constraint3];
//    [self.view addConstraint:constranint4];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
