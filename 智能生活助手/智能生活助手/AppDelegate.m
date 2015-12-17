//
//  AppDelegate.m
//  智能生活助手
//
//  Created by qingyun on 15/12/17.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window = window;
    _window.backgroundColor = [UIColor whiteColor];
    _window.hidden = NO;

    UIViewController *FirstVC = [[UIViewController alloc] init];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:FirstVC];
    
    UIViewController *SecondVC = [[UIViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:SecondVC];
    
    UIViewController *ThirdVC = [[UIViewController alloc] init];
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:ThirdVC];
    
    UIViewController *ForthVC = [[UIViewController alloc] init];
    UINavigationController *forthNav = [[UINavigationController alloc] initWithRootViewController:ForthVC];
    
    NSArray *viewControllers = @[firstNav,secondNav,thirdNav,forthNav];
    
    UITabBarController *mainViewController = [[UITabBarController alloc] init];
    mainViewController.viewControllers = viewControllers;
    
    mainViewController.tabBar.tintColor = [UIColor blackColor];
    _window.rootViewController = mainViewController;
    
    
    return YES;
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
