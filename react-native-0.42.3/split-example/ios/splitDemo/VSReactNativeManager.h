

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@class RCTBridge,RCTRootView;

@interface VSReactNativeManager : NSObject<RCTBridgeModule>

+(void)configRNWithLaunchOptions:(NSDictionary *)launchOptions;

+ (RCTBridge *)bridge;

+ (RCTRootView *)rnRootViewWithModuleName:(NSString *)moduleName
                        initialProperties:(NSDictionary *)initialProperties;

@end
