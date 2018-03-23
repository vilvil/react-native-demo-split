

#import "VSReactNativeRootViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

#import "VSReactNativeManager.h"

@interface VSReactNativeRootViewController ()

@property (nonatomic, copy)NSString *moduleName;

@end

@implementation VSReactNativeRootViewController

- (instancetype)initWithModuleName:(NSString *)moduleName{
    self = [super init];
    if (self) {
        _moduleName = moduleName;
    }
    return self;
}

    
- (void)loadView{
        self.view = [VSReactNativeManager rnRootViewWithModuleName:self.moduleName initialProperties:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}



@end
