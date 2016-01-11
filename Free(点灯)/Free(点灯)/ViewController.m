//
//  ViewController.m
//  Free(点灯)
//
//  Created by ibokan on 16/1/5.
//  Copyright © 2016年 ZuoYe02. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
{
    NSMutableArray *buttonArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    CGFloat width = [UIScreen mainScreen].bounds.size.width;
//    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    
    buttonArr = [NSMutableArray arrayWithCapacity:48];
    
    
    int count = 0;
    
    
    for (int j = 0; j < 8; j++)
    {
        for (int i = 0; i < 6; i++)
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0+huan*i, 20+gao*j, huan, gao);
//            button.backgroundColor = [UIColor redColor];
//            [button setTitle:@"a" forState:UIControlStateNormal];
            
            [button setImage:[UIImage imageNamed:@"RD6QWR{2OE1WS52A1GJ_AAJ.jpg"] forState:UIControlStateNormal];
            
            //被选中状态
            [button setImage:[UIImage imageNamed:@"8IA)BGC%4I9L2A_TACEQ28K.jpg"] forState:UIControlStateSelected];
            
            //添加方法
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            
            button.tag = count++;
            
            [buttonArr addObject:button];
        }
    }
    
    
    
    
    for (int i = 0; i < 48; i++) {
        [self.view addSubview:buttonArr[i]];
    }
    
    
    
    
    
    
    
}


-(void)buttonAction:(UIButton *)sender
{
    NSLog(@"点灯");
    sender.selected = !sender.selected;
    
    NSInteger index = sender.tag;
    
    UIButton *beforeButton;
    UIButton *afterButton;
    UIButton *followButton;
    UIButton *aboveButton;
    
    
    
//    [self.view viewWithTag:1];
    
    
    
    //最上和最下两边的越界问题
    if ((index>=0 && index<=5) || (index>=42 && index<=47))
    {
        
        if (index==0 || index==42)
        {
            afterButton = buttonArr[index+1];
            afterButton.selected = !afterButton.selected;
        }
        else if (index==5 || index==47)
        {
            beforeButton = buttonArr[index-1];
            beforeButton.selected = !beforeButton.selected;
        }
        else
        {
            afterButton = buttonArr[index+1];
            afterButton.selected = !afterButton.selected;
            beforeButton = buttonArr[index-1];
            beforeButton.selected = !beforeButton.selected;
        }
        
        if (index>=0 && index<=5) {
            followButton = buttonArr[index+6];
            followButton.selected = !followButton.selected;
        }
        else
        {
            aboveButton = buttonArr[index-6];
            aboveButton.selected = !aboveButton.selected;
        }
        
    }
    //左右两边问题
    else if (index%6==0 || (index+1)%6==0)
    {
        aboveButton = buttonArr[index-6];
        aboveButton.selected = !aboveButton.selected;
        followButton = buttonArr[index+6];
        followButton.selected = !followButton.selected;
        
        if (index%6==0) {
            afterButton = buttonArr[index+1];
            afterButton.selected = !afterButton.selected;
        }
        else
        {
            beforeButton = buttonArr[index-1];
            beforeButton.selected = !beforeButton.selected;
        }
    }
    else
    {
        beforeButton = buttonArr[index-1];
        beforeButton.selected = !beforeButton.selected;
        afterButton = buttonArr[index+1];
        afterButton.selected = !afterButton.selected;
        followButton = buttonArr[index+6];
        followButton.selected = !followButton.selected;
        aboveButton = buttonArr[index-6];
        aboveButton.selected = !aboveButton.selected;
    }
    
    
    
    
    
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
