//
//  AppDelegate.m
//  RESideMenu
//
//  Created by CSX on 2017/3/4.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "AppDelegate.h"
#import "CenterOneViewController.h"
#import "LeftViewController.h"
#import "RightViewController.h"
#import "RESideMenu.h"

@interface AppDelegate ()<RESideMenuDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[[CenterOneViewController alloc] init]];
    LeftViewController *leftMenuViewController = [[LeftViewController alloc] init];
    RightViewController *rightMenuViewController = [[RightViewController alloc] init];
    
    RESideMenu *sideMenuViewController = [[RESideMenu alloc] initWithContentViewController:navigationController
                                                                    leftMenuViewController:leftMenuViewController
                                                                   rightMenuViewController:rightMenuViewController];
    sideMenuViewController.backgroundImage = [UIImage imageNamed:@"beijing.jpg"];
    sideMenuViewController.menuPreferredStatusBarStyle = UIStatusBarStyleLightContent; // 使进入抽屉界面的时候状态栏显示样式
//    sideMenuViewController.delegate = self;
    sideMenuViewController.contentViewShadowColor = [UIColor blackColor];//抽屉效果显示的时候阴影的样式
    sideMenuViewController.contentViewShadowOffset = CGSizeMake(0, 0);//阴影的偏移量
    sideMenuViewController.contentViewShadowOpacity = 0.6;//阴影的模糊程度
    sideMenuViewController.contentViewShadowRadius = 12;//阴影的范围
    sideMenuViewController.contentViewShadowEnabled = YES;
    self.window.rootViewController = sideMenuViewController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
