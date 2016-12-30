//
//  AppDelegate.m
//  RMDemo
//
//  Created by 阳光 on 16/12/29.
//  Copyright © 2016年 阳光. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    _window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _window.rootViewController=[[UINavigationController alloc]initWithRootViewController:[FirstVC new]];

    _window.backgroundColor=[UIColor whiteColor];

    [self setRM];

    return YES;
}

-(void)setRM
{
    [[RCIM sharedRCIM]initWithAppKey:RM_AppKey];
    [[RCIM sharedRCIM] connectWithToken:RM_AppToken success:^(NSString *userId) {

        dispatch_async(dispatch_get_main_queue(), ^{

            //            TLChatMainVC *chatMainVC=[[TLChatMainVC alloc]initWithConversationType:ConversationType_PRIVATE targetId:@"test2"];
            //            chatMainVC.title=@"测试";
            //            self.window.rootViewController=chatMainVC;

            //            RCConversationViewController *vc=[[RCConversationViewController alloc]initWithConversationType:ConversationType_PRIVATE targetId:@"test2"];
            //            vc.title=@"test";
            //            self.window.rootViewController =vc;
            
        });
        
    } error:^(RCConnectErrorCode status) {
        
    } tokenIncorrect:^{
        
    }];

}

@end
