//
//  BPView.m
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import "BPView.h"

@implementation BPView
    
- (instancetype)init {
    if (self = [super init]) {
        [self bp_setupViews];
        [self bp_bindViewModel];
    }
    return self;
}
    
- (instancetype)initWithViewModel:(id<BPViewModelProtocol>)viewModel {
    if (self = [super init]) {
        [self bp_setupViews];
        [self bp_bindViewModel];
    }
    return self;
}

#pragma mark -- RAC --

- (void)bp_setupViews {}
    
- (void)bp_bindViewModel {}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
