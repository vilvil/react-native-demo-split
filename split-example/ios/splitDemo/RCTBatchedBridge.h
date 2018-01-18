

#import <Foundation/Foundation.h>
#import <React/RCTJavaScriptExecutor.h>

@interface RCTBatchedBridge(RnLoadJS) // RN私有类 ，这里暴露他的接口


- (void)enqueueApplicationScript:(NSData *)script
                             url:(NSURL *)url
                      onComplete:(RCTJavaScriptCompleteBlock)onComplete;


@end
