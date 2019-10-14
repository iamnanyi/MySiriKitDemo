//
//  AppDelegate.m
//  MySiriKitDemo
//
//  Created by zhaobin on 2019/10/13.
//  Copyright © 2019 zhaobin. All rights reserved.
//

#import "AppDelegate.h"
#import <Intents/Intents.h>
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler {
    if ([self.window.rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *vc = (UINavigationController *)self.window.rootViewController;
        restorationHandler(vc.viewControllers);
    }
    return YES;
}

@end
