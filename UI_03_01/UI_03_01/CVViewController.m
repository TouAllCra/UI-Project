//
//  CVViewController.m
//  UI_03_01
//
//  Created by ibokan on 16/1/13.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "CVViewController.h"
#import "AVViewController.h"

@interface CVViewController ()

@end

@implementation CVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"CViewController";
}

- (IBAction)pop:(id)sender {
    
    NSArray *allViewsArray = self.navigationController.viewControllers;
    for (UIViewController *viewController in allViewsArray) {
        if ([viewController isKindOfClass:[AVViewController class]]) {
            //返回到指定页面
            [self.navigationController popToViewController:viewController animated:YES];
        }
    }
    
    
    
}

- (IBAction)popToRootView:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
