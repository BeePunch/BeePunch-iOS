//
//  BPViewController.m
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import "BPViewController.h"

@interface BPViewController ()

@end

@implementation BPViewController
    
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    BPViewController *viewController = [super allocWithZone:zone];
    
    @weakify(viewController)
    [[viewController rac_signalForSelector:@selector(viewDidLoad)] subscribeNext:^(id x) {
        @strongify(viewController)
        [viewController bp_addSubviews];
        [viewController bp_bindViewModel];
    }];
    
    [[viewController rac_signalForSelector:@selector(viewWillAppear:)] subscribeNext:^(id x) {
        @strongify(viewController)
        [viewController bp_layoutNavigation];
        [viewController bp_getNewData];
    }];
    
    [[viewController rac_signalForSelector:@selector(viewDidAppear:)] subscribeNext:^(id x) {
        @strongify(viewController)
        [viewController bp_didAppear];
    }];
    
    [[viewController rac_signalForSelector:@selector(viewDidDisappear:)] subscribeNext:^(id x) {
        @strongify(viewController)
        [viewController bp_didDisappear];
    }];
    
    return viewController;
    
}
    
- (instancetype)initWithViewModel:(id<BPViewModelProtocol>)viewModel {
    if (self = [super init]) {}
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- RAC --
    
/** 添加控件 */
- (void)bp_bindViewModel {}
/** 绑定RAC */
- (void)bp_addSubviews {}
/** 设置navigation */
- (void)bp_layoutNavigation {}
/** 初次获得数据 */
- (void)bp_getNewData {}
/** 视图已经出现 */
- (void)bp_didAppear {}
/** 视图即将消失 */
- (void)bp_willDisappear {}
/** 视图不可见时 */
- (void)bp_didDisappear {}
    
@end
