//
//  BPShareSDKManager.m
//  BeePunch
//
//  Created by 王斌 on 2017/9/22.
//  Copyright © 2017年 neighborwangshushu. All rights reserved.
//

#import "BPShareSDKManager.h"

NSString * const appKey_Weibo = @"575841703";
NSString * const appSecret_Weibo = @"7eb9600e1b5a02c8ab58568ac1865a9e";
NSString * const redirectUri_Weibo = @"http://www.sina.com";

NSString * const appID_QQ = @"1106272766";
NSString * const appKey_QQ = @"YpuQMjSogxpJSkV2";

@implementation BPShareSDKManager
    
+ (instancetype)shareInstance {
    
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
    
}
    
- (void)setPlatfrom:(BPSharePlatform)platform {
    
    if (platform == BPSharePlatformTypeNone || !platform) {
        return;
    }
    
    NSMutableArray *platformsArray = [NSMutableArray array];
    
    if (platform & BPSharePlatformTypeWechat) {
        [platformsArray addObject:@(SSDKPlatformTypeWechat)];
    }
    if (platform & BPSharePlatformTypeWeibo) {
        [platformsArray addObject:@(SSDKPlatformTypeSinaWeibo)];
    }
    if (platform & BPSharePlatformTypeQQ) {
        [platformsArray addObject:@(SSDKPlatformTypeQQ)];
    }
    
    [self initialize:platformsArray];
    
}
    
- (void)initialize:(NSMutableArray *)platformsArray {
    
    [ShareSDK registerActivePlatforms:platformsArray onImport:^(SSDKPlatformType platformType) {
        switch (platformType) {
            case SSDKPlatformTypeWechat:
                [ShareSDKConnector connectWeChat:[WXApi class]];
                break;
            case SSDKPlatformTypeSinaWeibo:
                [ShareSDKConnector connectWeibo:[WeiboSDK class]];
                break;
            case SSDKPlatformTypeQQ:
                [ShareSDKConnector connectQQ:[QQApiInterface class] tencentOAuthClass:[TencentOAuth class]];
                break;
            default:
            break;
        }
    } onConfiguration:^(SSDKPlatformType platformType, NSMutableDictionary *appInfo) {
        switch (platformType) {
            case SSDKPlatformTypeWechat:
                [appInfo SSDKSetupWeChatByAppId:@"" appSecret:@""];
                break;
            case SSDKPlatformTypeSinaWeibo:
                [appInfo SSDKSetupSinaWeiboByAppKey:appKey_Weibo
                                          appSecret:appSecret_Weibo
                                        redirectUri:redirectUri_Weibo
                                           authType:SSDKAuthTypeBoth];
                break;
            case SSDKPlatformTypeQQ:
                [appInfo SSDKSetupQQByAppId:appID_QQ
                                     appKey:appKey_QQ
                                   authType:SSDKAuthTypeBoth];
                break;
            default:
                break;
        }
    }];
    
}

@end
