# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

platform :ios, '8.0'
use_frameworks!

target 'BeePunch' do
    pod 'Masonry'
    pod 'MJRefresh', '~> 3.1.12'
    pod 'SDWebImage', '~> 4.1.0'
    pod 'IQKeyboardManager', '~> 4.0.13'
    pod 'JKCategories'
    pod 'JSONModel', '~> 1.7.0'
    pod 'ReactiveCocoa', '~> 2.5'
    pod 'JKCategories'
    pod 'AFNetworking', '~> 3.1.0'
    
    #第三方
    # 主模块(必须)
    pod 'ShareSDK3'
    # Mob 公共库(必须) 如果同时集成SMSSDK iOS2.0:可看此注意事项：http://bbs.mob.com/thread-20051-1-1.html
    pod 'MOBFoundation'
#    # UI模块(非必须，需要用到ShareSDK提供的分享菜单栏和分享编辑页面需要以下1行)
#    pod 'ShareSDK3/ShareSDKUI'
    # 平台SDK模块(对照一下平台，需要的加上。如果只需要QQ、微信、新浪微博，只需要以下3行)
    pod 'ShareSDK3/ShareSDKPlatforms/QQ'
    pod 'ShareSDK3/ShareSDKPlatforms/SinaWeibo'
    pod 'ShareSDK3/ShareSDKPlatforms/WeChat'

  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for BeePunch

  target 'BeePunchTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'BeePunchUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
