//
//  BPViewModelProtocol.h
//  BeePunch
//
//  Created by 王斌 on 2017/9/21.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BPViewModelProtocol <NSObject>
    
@optional
    
- (instancetype)initWithModel:(id)model;
    
- (void)bp_initialize;

@end
