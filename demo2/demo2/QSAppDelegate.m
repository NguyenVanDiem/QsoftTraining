//
//  QSAppDelegate.m
//  demo2
//
//  Created by Nguyen Van Diem on 5/22/14.
//  Copyright (c) 2014 Nguyen Van Diem. All rights reserved.
//

#import "QSAppDelegate.h"
#import "QSProjectsListViewController.h"

@implementation QSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    QSProjectsListViewController *viewController = [[QSProjectsListViewController alloc]initWithNibName:@"QSProjectsListViewController" bundle:nil];
    [self.window setRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
