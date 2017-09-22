//
//  BPNavigationController.m
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import "BPNavigationController.h"

@interface BPNavigationController ()

@end

@implementation BPNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self nav_initialize];
    
    // Do any additional setup after loading the view.
}
    
- (void)nav_initialize {
    [self.navigationBar setBackgroundImage:[UIImage new] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return [[self topViewController] preferredStatusBarStyle];
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
