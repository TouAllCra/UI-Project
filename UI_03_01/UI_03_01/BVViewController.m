//
//  BVViewController.m
//  UI_03_01
//
//  Created by ibokan on 16/1/13.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "BVViewController.h"
#import "PushView.h"
#import "CVViewController.h"


@interface BVViewController ()

@end

@implementation BVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"BViewController";
    
    PushView *pushView = [[PushView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-30, [UIScreen mainScreen].bounds.size.height/2-15, 60, 30)];
    [pushView.pushButton addTarget:self action:@selector(pushButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pushView];
}

-(void)pushButtonAction:(UIButton *)sender
{
    CVViewController *cViewController = [[CVViewController alloc] initWithNibName:@"CVViewController" bundle:[NSBundle mainBundle]];
    //当视图控制器被压入导航控制器中，就具备navigationController,就有此方法
    [self.navigationController pushViewController:cViewController animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
