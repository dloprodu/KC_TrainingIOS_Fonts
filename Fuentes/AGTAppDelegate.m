//
//  AGTAppDelegate.m
//  Fuentes
//
//  Created by Fernando Rodríguez Romero on 7/29/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTAppDelegate.h"
#import "AGTFontsViewController.h"

@implementation AGTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // Configurar aspecto
    [self customizeAppearance];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    AGTFontsViewController *fontsVC = [[AGTFontsViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:fontsVC];
    
    self.window.rootViewController = navVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


-(void) customizeAppearance{
    
    UIColor *darkBlue = [UIColor colorWithRed:10.0/255.0
                                        green:17.0/255.0
                                         blue:31.0/255.0
                                        alpha:1];
    UIColor *darkRed = [UIColor colorWithRed:168.0 / 255
                                       green:11.0 / 255.0
                                        blue:31.0 / 255.0
                                       alpha:0.5];
    
    [[UITableViewHeaderFooterView appearance] setTintColor: darkBlue];
    [[UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil] setTextColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTintColor: darkRed];
    [[UITableView appearance] setSectionIndexColor: darkRed];
    
    [[UINavigationBar appearance] setBackgroundImage:[[UIImage imageNamed:@"navBarBackgroundPortrait"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 2, 0, 2) resizingMode: UIImageResizingModeStretch] forBarMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{
             NSForegroundColorAttributeName: [UIColor whiteColor],
       //UITextAttributeTextShadowColor: [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8],
      //UITextAttributeTextShadowOffset: [NSValue valueWithUIOffset:UIOffsetMake(0, -1)],
                  NSFontAttributeName: [UIFont fontWithName:@"Star Jedi" size:20]}];
    
    // Back button
    UIImage *backImg = [[UIImage imageNamed:@"backBtn"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 5)];
    
    [[UINavigationBar appearance] setBackIndicatorImage:nil];
    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:nil];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backImg
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
}


@end
