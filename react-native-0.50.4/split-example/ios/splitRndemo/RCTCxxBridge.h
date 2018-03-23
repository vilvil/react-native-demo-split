

#import <Foundation/Foundation.h>

@interface RCTCxxBridge

@end

@interface RCTCxxBridge (RnLoadJS) // RN私有类 ，这里暴露他的接口

- (void)executeSourceCode:(NSData *)sourceCode sync:(BOOL)sync;

@end
