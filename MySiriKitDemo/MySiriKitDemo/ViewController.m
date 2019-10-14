//
//  ViewController.m
//  MySiriKitDemo
//
//  Created by zhaobin on 2019/10/13.
//  Copyright © 2019 zhaobin. All rights reserved.
//

#import "ViewController.h"
#import <Intents/Intents.h>
#import <IntentsUI/IntentsUI.h>
#import "TestIntent.h"
#import "MSDViewController.h"

@interface ViewController () <INUIAddVoiceShortcutViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)restoreUserActivityState:(NSUserActivity *)activity {
    [super restoreUserActivityState:activity];
    [self change];
}

#pragma mark - Private Method

- (IBAction)buttonClicked:(id)sender {
    TestIntent *intent = [[TestIntent alloc] init];
    intent.suggestedInvocationPhrase = @"测试Siri";
    INShortcut *shortcut = [[INShortcut alloc] initWithIntent:intent];
    INUIAddVoiceShortcutViewController *viewController = [[INUIAddVoiceShortcutViewController alloc] initWithShortcut:shortcut];
    viewController.delegate = self;
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void)change {
    MSDViewController *vc = [[MSDViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - INUIAddVoiceShortcutViewControllerDelegate

- (void)addVoiceShortcutViewController:(INUIAddVoiceShortcutViewController *)controller didFinishWithVoiceShortcut:(nullable INVoiceShortcut *)voiceShortcut error:(nullable NSError *)error {
    [controller dismissViewControllerAnimated:YES completion:nil];
}

- (void)addVoiceShortcutViewControllerDidCancel:(INUIAddVoiceShortcutViewController *)controller {
    [controller dismissViewControllerAnimated:YES completion:nil];
}

@end
