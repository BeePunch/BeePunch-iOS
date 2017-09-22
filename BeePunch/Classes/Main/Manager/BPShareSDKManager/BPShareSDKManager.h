//
//  BPShareSDKManager.h
//  BeePunch
//
//  Created by 王斌 on 2017/9/22.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <ShareSDK/ShareSDK.h>
#import <ShareSDKConnector/ShareSDKConnector.h>
//腾讯开放平台（对应QQ和QQ空间）SDK头文件
#import <TencentOpenAPI/TencentOAuth.h>
#import <TencentOpenAPI/QQApiInterface.h>
//微信SDK头文件
#import "WXApi.h"
//新浪微博SDK头文件<
#import "WeiboSDK.h"

typedef enum : NSUInteger {
    BPSharePlatformTypeNone = 0,
    BPSharePlatformTypeWechat = 1 << 1,
    BPSharePlatformTypeWeibo = 1 << 2,
    BPSharePlatformTypeQQ = 1 << 3,
} BPSharePlatform;

@interface BPShareSDKManager : NSObject
    
+ (instancetype)shareInstance;

@end
