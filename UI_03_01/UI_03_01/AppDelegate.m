//
//  AppDelegate.m
//  UI_03_01
//
//  Created by ibokan on 16/1/13.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController *viewController = [[ViewController alloc] init];
    
    //有一个viewController 才能有导航控制器
//    self.window.rootViewController = viewController;
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:viewController];
    [self.window makeKeyAndVisible];
    [self logViewTreeForMainWindow];
    
    //ios7.0之后通常在Appdelegate设置导航栏的颜色
    //设置导航栏bar的颜色
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:34/255.0 green:199/255.0 blue:199/255.0 alpha:1 ]];
    //设置导航栏title字体颜色，大小
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:18],NSFontAttributeName, nil]];
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    return YES;
}

// Recursively travel down the view tree, increasing the indentation level for children

- (void)dumpView:(UIView *)aView atIndent:(int)indent into:(NSMutableString *)outstring

{
    
    for (int i = 0; i < indent; i++) [outstring appendString:@"--"];
    
    [outstring appendFormat:@"[%2d] %@\n", indent, [[aView class] description]];
    
    for (UIView *view in [aView subviews])
        
        [self dumpView:view atIndent:indent + 1 into:outstring];
    
}

// Start the tree recursion at level 0 with the root view

- (NSString *) displayViews: (UIView *) aView

{
    
    NSMutableString *outstring = [[NSMutableString alloc] init];
    
    [self dumpView: self.window atIndent:0 into:outstring];
    
//    return [outstring autorelease];
    return outstring;
    
}

// Show the tree

- (void)logViewTreeForMainWindow

{

    //  CFShow([self displayViews: self.window]);
    
    NSLog(@"The view tree:\n%@", [self displayViews:self.window]);
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
