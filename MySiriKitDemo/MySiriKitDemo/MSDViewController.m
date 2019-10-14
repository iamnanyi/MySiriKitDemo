//
//  MSDViewController.m
//  MySiriKitDemo
//
//  Created by zhaobin on 2019/10/14.
//  Copyright © 2019 zhaobin. All rights reserved.
//

#import "MSDViewController.h"

@interface MSDViewController ()

@end

@implementation MSDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:(arc4random() % 255 / 255.0) green:(arc4random() % 255 / 255.0) blue:(arc4random() % 255 / 255.0) alpha:1];
}

@end
