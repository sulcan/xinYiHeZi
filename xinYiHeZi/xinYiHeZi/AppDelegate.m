//
//  AppDelegate.m
//  xinYiHeZi
//
//  Created by  sulcan on 16/3/27.
//  Copyright © 2016年 苏烁. All rights reserved.
//

#import "AppDelegate.h"
#import "XYHZTabBarController.h"
#import "XYHZNavigationController.h"
#import "XYHZHomeController.h"
#import "XYHZCategoryController.h"
#import "XYHZGoodController.h"
#import "XYHZStrategyController.h"
#import "XYHZMineController.h"

@interface AppDelegate ()
@property (nonatomic, strong) XYHZTabBarController *tabBarVC;
@end

@implementation AppDelegate


- (XYHZTabBarController *)tabBarVc{
    if (!_tabBarVC) {
        _tabBarVC = [[XYHZTabBarController alloc] init];
    }
    return _tabBarVC;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //首页
    XYHZHomeController *homeVC = [[XYHZHomeController alloc] init];
    [self addchildVC:homeVC title:@"首页" imageNamed:@"tab_home" selectedImageNamed:nil];
    
    [UIImage imageNamed:@"tab_information"];
    //分类
    XYHZCategoryController *categoryVC = [[XYHZCategoryController alloc] init];
    
    [self addchildVC:categoryVC title:@"分类" imageNamed:@"tab_investment" selectedImageNamed:@"tab_investment_selected"];
    
    //好物
    XYHZGoodController *goodVC = [[XYHZGoodController alloc] init];
    [self addchildVC:goodVC title:@"好物" imageNamed:@"tab_loan" selectedImageNamed:nil];
    
    //攻略
    XYHZStrategyController *strategyVC = [[XYHZStrategyController alloc] init];
    [self addchildVC:strategyVC title:@"攻略" imageNamed:@"tab_transfer" selectedImageNamed:nil];
    //我的
    XYHZMineController *mineVC = [[XYHZMineController alloc] init];
    [self addchildVC:mineVC title:@"我的" imageNamed:@"tab_information" selectedImageNamed:nil];
    
    self.window.rootViewController = self.tabBarVc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)addchildVC:(UIViewController *)vc title:(NSString *)title imageNamed:(NSString *)imageName selectedImageNamed:(NSString *)selectedImageName{
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:imageName];
    vc.view.backgroundColor = [self randomColor];
    XYHZNavigationController *nav = [[XYHZNavigationController alloc] initWithRootViewController:vc];
    if (selectedImageName) {
        vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    [self.tabBarVc addChildViewController:nav];
}

- (UIColor *)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

@end