//
//  ViewController.m
//  UI_02_02_02
//
//  Created by aries365.com on 16/1/11.
//  Copyright © 2016年 aries365.com. All rights reserved.
//

#import "ViewController.h"
int logTog = 1000;
int ItWidth = 0;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int screenWdith = [UIScreen mainScreen].bounds.size.width;
    self.view.tag = logTog;
    int wdith = screenWdith/8;
    int www = [UIDevice currentDevice];
    
    for (int i = 1; i <= 10; i++) {
        UIView *view = [UIView new];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
        if (screenWdith < ItWidth) {
//            [self.view removeConstraints:[constraintTop,]];
            NSLayoutConstraint *constraintOtherTop = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog-4]attribute:NSLayoutAttributeBottom multiplier:1 constant:20];
            [self.view addConstraint:constraintOtherTop];
        }
        else
        {
            //Top-self.view.Top 1 20
            NSLayoutConstraint *constraintTop = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
            [self.view addConstraint:constraintTop];
            
        }
        if (logTog == 1000) {//第一个
             //Left->self.view.Left 1 20
            NSLayoutConstraint *constraintLeft = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:wdith-10];
            [self.view addConstraint:constraintLeft];
        }
        else
        {
            //Left->last.right 1 20
            NSLayoutConstraint *constraintOtherLeft = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog] attribute:NSLayoutAttributeRight multiplier:1 constant:wdith-10];
            [self.view addConstraint:constraintOtherLeft];
            
        }

    //Height->heigth 1 30
    NSLayoutConstraint *constrantHeight = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:40];
    //width->width 1 30
    NSLayoutConstraint *constraintWidth = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:40];
        //
        
        [self.view addConstraint:constraintWidth];
        [self.view addConstraint:constrantHeight];

        logTog++;
        view.tag = logTog;
        ItWidth = ItWidth + (wdith + 40);
    
    }
//    switch ([UIDevice currentDevice].orientation) {
//        case UIDeviceOrientationPortrait://竖屏
//        {
//            int screenWdith = [UIScreen mainScreen].bounds.size.width;
////            Top-self.view.Top 1 20
//            if (i <= 4) {
//            NSLayoutConstraint *constraintTop = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
//            [self.view addConstraint:constraintTop];
//                if (logTog == 1000) {//第一个
//                    //Left->self.view.Left 1 20
//                    NSLayoutConstraint *constraintLeft = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:wdith-10];
//                    [self.view addConstraint:constraintLeft];
//                }
//                else
//                {
//                    //Left->last.right 1 20
//                    NSLayoutConstraint *constraintOtherLeft = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog] attribute:NSLayoutAttributeRight multiplier:1 constant:wdith-10];
//                    [self.view addConstraint:constraintOtherLeft];
//                    
//                }
//
//            }
//            else
//            {
//                NSLayoutConstraint *constraintOtherTop = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog-4]attribute:NSLayoutAttributeBottom multiplier:1 constant:20];
//                [self.view addConstraint:constraintOtherTop];
//                NSLayoutConstraint *constraintOtherLetf = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog-4] attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
//                [self.view addConstraint:constraintOtherLetf];
//            }
//        }
//            break;
//            //横屏
//        case UIDeviceOrientationLandscapeLeft:
//        case UIDeviceOrientationLandscapeRight:
//        {
//            int screenWdith = [UIScreen mainScreen].bounds.size.width;
//            if (i <= 8) {
//                NSLayoutConstraint *constraintTop = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
//                [self.view addConstraint:constraintTop];
//                if (logTog == 1000) {//第一个
//                    //Left->self.view.Left 1 20
//                    NSLayoutConstraint *constraintLeft = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:wdith-10];
//                    [self.view addConstraint:constraintLeft];
//                }
//                else
//                {
//                    //Left->last.right 1 20
//                    NSLayoutConstraint *constraintOtherLeft = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog] attribute:NSLayoutAttributeRight multiplier:1 constant:wdith-10];
//                    [self.view addConstraint:constraintOtherLeft];
//                    NSLayoutConstraint *constraintOtherLetf = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog-4] attribute:NSLayoutAttributeLeft multiplier:1 constant:0];
//                    [self.view addConstraint:constraintOtherLetf];
//
//                }
//
//            }
//            else
//            {
//                NSLayoutConstraint *constraintOtherTop = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:[self.view viewWithTag:logTog-4]attribute:NSLayoutAttributeBottom multiplier:1 constant:20];
//                [self.view addConstraint:constraintOtherTop];
//            }
//        }
//            break;
//            
//        default:
//            break;
//    }
//        //Height->heigth 1 30
//        NSLayoutConstraint *constrantHeight = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1 constant:40];
//        //width->width 1 30
//        NSLayoutConstraint *constraintWidth = [NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1 constant:40];
//
//        [self.view addConstraint:constraintWidth];
//        [self.view addConstraint:constrantHeight];
//        logTog++;
//        view.tag = logTog;
//        ItWidth = ItWidth + (wdith + 40);
//    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
