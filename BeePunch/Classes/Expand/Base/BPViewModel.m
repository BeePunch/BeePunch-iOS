//
//  BPViewModel.m
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import "BPViewModel.h"

@implementation BPViewModel
    
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    BPViewModel *viewModel = [super allocWithZone:zone];
    
    if (viewModel) {
        [viewModel bp_initialize];
    }
    
    return viewModel;
    
}
    
- (instancetype)initWithModel:(id)model {
    self = [super init];
    if (self) {}
    return self;
}
    
- (void)bp_initialize {};

@end
