//
//  XYHZTabBarController.m
//  xinYiHeZi
//
//  Created by  sulcan on 16/3/27.
//  Copyright © 2016年 苏烁. All rights reserved.
//

#import "XYHZTabBarController.h"

@interface XYHZTabBarController ()

@end

@implementation XYHZTabBarController

+ (void)initialize {
    UITabBar *tabBar = [UITabBar appearance];
    tabBar.tintColor = [UIColor redColor];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
