

#import "VSReactNativeManager.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import "VSReactNativeRootViewController.h"


@interface VSReactNativeManager ()

@end

static RCTBridge * bridge;

@implementation VSReactNativeManager

RCT_EXPORT_MODULE();

+(void)configRNWithLaunchOptions:(NSDictionary *)launchOptions{
    
     NSString *jsCodeLocation;
    
    jsCodeLocation = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"bundle" inDirectory:@"split/base"];
    
    bridge = [[RCTBridge alloc] initWithBundleURL:[NSURL URLWithString:jsCodeLocation]
                                   moduleProvider:nil launchOptions:launchOptions];
    
}

+ (RCTBridge *)bridge{
    return bridge;
}

+ (RCTRootView *)rnRootViewWithModuleName:(NSString *)moduleName
                        initialProperties:(NSDictionary *)initialProperties{
    
    RCTRootView * root = [[RCTRootView alloc] initWithBridge:bridge moduleName:moduleName initialProperties:initialProperties];
    
    return root;
    
}

@end
