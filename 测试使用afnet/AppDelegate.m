//
//  AppDelegate.m
//  测试使用afnet
//
//  Created by 朱封毅 on 25/02/16.
//  Copyright © 2016年 tairan. All rights reserved.
//

#import "AppDelegate.h"
#import "Reachability.h"
#import "AppDelegate+abc.h"
#import "ViewController.h"
@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    UINavigationController
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    
        
//    });
    
//    dispatch_async_f(<#dispatch_queue_t queue#>, <#void *context#>, <#dispatch_function_t work#>)
    /*dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
    });*/
    
    UINavigationController *na = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    self.window.rootViewController = na;
    
    [self.window makeKeyAndVisible];
    
    
    /*Reachability* reach = [Reachability reachabilityWithHostname:@"www.baidu.com"];
    // Set the blocks
    reach.reachableBlock = ^(Reachability*reach)
    {
        // keep in mind this is called on a background thread
        // and if you are updating the UI it needs to happen
        // on the main thread, like this:
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"网络可用了");
        });
    };
    
    reach.unreachableBlock = ^(Reachability*reach)
    {
        NSLog(@"网络连接失败了!");
    };
    */
    // Start the notifier, which will cause the reachability object to retain itself!
//    [reach startNotifier];
    
    
    
#ifdef DEBUG
    
    NSLog(@"SCNetworkReachabilitySetDispatchQueue() fail)");
    
#endif
    
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
