//
//  BPViewControllerProtocol.h
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BPViewModelProtocol;

@protocol BPViewControllerProtocol <NSObject>

@optional
    
- (instancetype)initWithViewModel:(id <BPViewModelProtocol>)viewModel;
    
- (void)bp_bindViewModel;
- (void)bp_addSubviews;
- (void)bp_layoutNavigation;
- (void)bp_getNewData;
- (void)bp_didAppear;
- (void)bp_willDisappear;
- (void)bp_didDisappear;

@end
