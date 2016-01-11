//
//  ViewController.m
//  UI_02_01
//
//  Created by ibokan on 16/1/11.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
     AutoLayout 由来
     IOS6之后出现的一种新的布局方式，用语句取代原先的Autoresizing系统的布局方式
     
     AutoLayout是指定视图和父视图 或 视图和兄弟视图的关系类布局
     
     在AutoLayout当中，我们使用约束来描述视图与视图之间的关系
     
     oc专门为开发者封装了一个类NSLayoutConstraint 来帮助开发者描述布局
     
     */
    
//    [NSLayoutConstraint constraintWithItem:<#(nonnull id)#> attribute:<#(NSLayoutAttribute)#> relatedBy:<#(NSLayoutRelation)#> toItem:<#(nullable id)#> attribute:<#(NSLayoutAttribute)#> multiplier:<#(CGFloat)#> constant:<#(CGFloat)#>]
    /*
     参数的含义：
    
     item:约束中两个视图对象
     attribute:描述视图的对齐特征
     relatedBy:描述两个视图attribute关系
     multiplier:缩放比例
     constant：偏移量
     
     公式：
     视图1.属性 关系 视图2.属性 * 缩放比例 + 偏移量
     
     视图1.左边 == 视图2.左边 * 1 + 0
     
     */
    
//    [NSLayoutConstraint constraintWithItem:视图1 attribute:左边 relatedBy:等于 toItem:视图2 attribute:左边 multiplier:1 constant:0]；
    
//    视图1.宽度 == 100
    
//    [NSLayoutConstraint constraintWithItem:宽度 attribute:宽度 relatedBy:等于 toItem:nil attribute:宽度 multiplier:1 constant:100]；
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor redColor];
    //启动atutoLayout布局
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view1];
    
    
    NSLayoutConstraint *constraint1 =  [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    NSLayoutConstraint *constraint2 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    NSLayoutConstraint *constraint3 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:100];
    NSLayoutConstraint *constraont4 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:100];
    
    [self.view addConstraint:constraint1];
    [self.view addConstraint:constraint2];
    [self.view addConstraint:constraint3];
    [self.view addConstraint:constraont4];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor redColor];
    view2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:view2];
    NSLayoutConstraint *constraintX = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    NSLayoutConstraint *constraintY = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    NSLayoutConstraint *constraintH = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    NSLayoutConstraint *constraintW = [NSLayoutConstraint constraintWithItem:view2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:view1 attribute:NSLayoutAttributeWidth multiplier:0.5 constant:0];
    [self.view addConstraint:constraintX];
    [self.view addConstraint:constraintY];
    [self.view addConstraint:constraintH];
    [self.view addConstraint:constraintW];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
