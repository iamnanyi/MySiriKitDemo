//
//  TestIntentHandler.m
//  MySiriKitDemo
//
//  Created by zhaobin on 2019/10/14.
//  Copyright © 2019 zhaobin. All rights reserved.
//

#import "TestIntentHandler.h"
#import "AppDelegate.h"
#import "ViewController.h"

@implementation TestIntentHandler

#pragma mark - TestIntentHandling

- (void)handleTest:(TestIntent *)intent completion:(void (^)(TestIntentResponse * _Nonnull))completion {
    NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:intent.identifier];
    completion([[TestIntentResponse alloc] initWithCode:TestIntentResponseCodeSuccess userActivity:activity]);
}

- (void)confirmTest:(TestIntent *)intent completion:(void (^)(TestIntentResponse * _Nonnull))completion {
    completion([[TestIntentResponse alloc] initWithCode:TestIntentResponseCodeReady userActivity:nil]);
}

@end
