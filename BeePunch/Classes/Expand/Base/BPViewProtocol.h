//
//  BPViewProtocol.h
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BPViewModelProtocol;

@protocol BPViewProtocol <NSObject>
    
    @optional
    
- (instancetype)initWithViewModel:(id <BPViewModelProtocol>)viewModel;
    
- (void)bp_bindViewModel;
- (void)bp_setupViews;
    
@end
