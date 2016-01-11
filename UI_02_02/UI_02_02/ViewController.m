//
//  ViewController.m
//  UI_02_02
//
//  Created by ibokan on 16/1/11.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "ViewController.h"
int logtag = 1000;
//int h = 3;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    float height = (ScreenHeight / 4) / 1000;
    float width = (ScreenWidth / 4) ;
    for(int i = 1;i <= 4; i++)
    {
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor cyanColor];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:view1];
        //left->left
        NSLayoutConstraint *contsranint1 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logtag]attribute:NSLayoutAttributeLeft multiplier:1 constant:10];
        //Top->self.view.Top
    NSLayoutConstraint *constranint2 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:10];
        //Right->Right
    NSLayoutConstraint *constranint3 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logtag] attribute:NSLayoutAttributeRight multiplier:1 constant:-width*3];
        //Height->height
    NSLayoutConstraint *constraint4 = [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil  attribute:NSLayoutAttributeHeight multiplier:10 constant:0];
    
    [self.view addConstraint:contsranint1];
    [self.view addConstraint:constranint2];
    [self.view addConstraint:constranint3];
    [self.view addConstraint:constraint4];
    view1.tag = ++logtag;
    
    }

//    UIView *view = [UIView new];
//    view.backgroundColor = [UIColor greenColor];
//    view.frame = CGRectMake(10, ScreenHeight/8, 40, 40);
//    [self.view addSubview:view];

    
    
}

//检测横竖屏
//是否支持横竖屏
-(BOOL)shouldAutorotate
{
    return YES;
}

//支持几种朝向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    UIView *view = (UIView *)[self.view viewWithTag:1000];
    //拿到手机的朝向
    switch ([UIDevice currentDevice].orientation) {
        case UIDeviceOrientationPortrait:
        {
            view.backgroundColor = [UIColor cyanColor];
            NSLog(@"竖屏");
        }
            break;
        case UIDeviceOrientationLandscapeLeft:
        case UIDeviceOrientationLandscapeRight:
        {
            view.backgroundColor = [UIColor greenColor];
            NSLog(@"横屏");
        }
            break;
            
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
