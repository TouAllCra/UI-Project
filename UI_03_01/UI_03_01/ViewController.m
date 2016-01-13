//
//  ViewController.m
//  UI_03_01
//
//  Created by ibokan on 16/1/13.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "ViewController.h"
#import "PushView.h"
#import "AVViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
//    UIView *view;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    /*
     UINavigationController 导航控制层次结构
     继承于 UIViewController
     
     导航控制器的作用？
     它采用栈的原理来管理视图控制器
     
     */
    //导航控制器显示的View为当前栈顶视图控制器的view
    self.title = @"Root";
    
    PushView *pushView = [[PushView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-30, [UIScreen mainScreen].bounds.size.height/2-15, 60, 30)];
    [pushView.pushButton addTarget:self action:@selector(pushButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pushView];
    
    //默认导航控制器的toolbar是隐藏的
    self.navigationController.toolbarHidden = NO;
    
    /*------------关于导航栏------------*/
//    self.navigationController.navigationBar
    //设置背景，现在开发过程中基本不会设置背景图片，而是设置背景颜色
    
    //导航栏中间有一个titileView
    UIButton *titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [titleButton setTitle:@"touch me" forState:UIControlStateNormal];
    [titleButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    //point的位置不会起效果
    titleButton.frame = CGRectMake(0, 0, 60, 30);
    [titleButton addTarget:self action:@selector(titleButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView =titleButton;
    
    UIView *viewll = [[UIView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-75, 60, 150, 300)];
    viewll.backgroundColor = [UIColor redColor];
    viewll.alpha = 0.3;
    viewll.hidden = YES;
    viewll.tag = 1000;
//    [self.view addSubview:view];
    //拿到windows
    UIWindow *windows = [[UIApplication sharedApplication].windows objectAtIndex:0];
    [windows addSubview:viewll];
    
    //导航栏的左边存在BarButtonItem
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.leftBarButtonItem = barButtonItem;
    
    UIBarButtonItem *barButtonItem1 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];
//    self.navigationItem.rightBarButtonItem = barButtonItem1;
//    self.navigationItem.rightBarButtonItems = @[barButtonItem,barButtonItem1];
    /*
     设置item间距
     UIBarButtonSystemItemFlexibleSpace,灵活的
     UIBarButtonSystemItemFixedSpace,固定的
     */
    UIBarButtonItem *barButtonItem2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    self.navigationItem.rightBarButtonItems = @[barButtonItem,barButtonItem2,barButtonItem1];
    
    //设置间距为60
    barButtonItem2.width = 30;
    
//    UIBarButtonItem *barButtonItem4 = [[UIBarButtonItem alloc] initWithCustomView:<#(nonnull UIView *)#>]
    //image要求30*30 镂空
//    UIBarButtonItem *barButtonItem5 = [[UIBarButtonItem alloc] initWithImage:<#(nullable UIImage *)#> style:<#(UIBarButtonItemStyle)#> target:<#(nullable id)#> action:<#(nullable SEL)#>]
    
    //UIToolbar
//    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 44)];
//    toolBar.backgroundColor = [UIColor greenColor];
//    toolBar.items = @[barButtonItem,barButtonItem2,barButtonItem1];
//    
//    
////    [self.view addSubview:toolBar];
//    UITextField *textFiled = [[UITextField alloc] initWithFrame:CGRectMake(0, 140, [UIScreen mainScreen].bounds.size.width, 30)];
//    textFiled.placeholder = @"placeHolder";
//    textFiled.inputAccessoryView = toolBar;
//    textFiled.delegate = self;
//    [self.view addSubview:textFiled];
    
    //给toolBarItems添加元素
    self.toolbarItems = @[barButtonItem,barButtonItem2,barButtonItem1];
    
    
}

-(void)titleButtonAction:(UIButton *)sender
{
    UIView *viewl = (UIView *)[self.view viewWithTag:1000];
    viewl.hidden = !viewl.hidden;
    NSLog(@"%d",viewl.hidden);
    NSLog(@"touch me");
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(void)pushButtonAction:(UIButton *)sender
{
    AVViewController *aViewController = [[AVViewController alloc] init];
    //模态视图推送功能
//    [self presentViewController:aViewController animated:YES completion:^{
//        
//    }];

    //当视图控制器被压入导航控制器中，就具备navigationController,就有此方法
    [self.navigationController pushViewController:aViewController animated:YES];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
