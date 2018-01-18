//
//  ViewController.m
//  splitDemo
//
//  Created by dave on 2018/1/17.
//  Copyright © 2018年 dave. All rights reserved.
//

#import "ViewController.h"
#import "VSReactNativeRootViewController.h"
#import "VSReactNativeManager.h"
#import <React/RCTBridge+Private.h>
#import "RCTBatchedBridge.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)loadRn:(id)sender {
    
    // A业务加载
    NSString * sampleA = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"bundle" inDirectory:@"split/sample_a"];
    
    NSData * sampleAData = [NSData dataWithContentsOfFile:sampleA];
    
    [(RCTBatchedBridge *)[VSReactNativeManager bridge].batchedBridge enqueueApplicationScript:sampleAData url:[NSURL URLWithString:sampleA] onComplete:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    // B业务加载
    NSString * sampleB = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"bundle" inDirectory:@"split/sample_b"];
    
    NSData * sampleBData = [NSData dataWithContentsOfFile:sampleB];
    
    [(RCTBatchedBridge *)[VSReactNativeManager bridge].batchedBridge enqueueApplicationScript:sampleBData url:[NSURL URLWithString:sampleB] onComplete:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
}

- (IBAction)sampleA:(id)sender {
    
    VSReactNativeRootViewController * vc = [[VSReactNativeRootViewController alloc] initWithModuleName:@"SampleA"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)sampleB:(id)sender {
    VSReactNativeRootViewController * vc = [[VSReactNativeRootViewController alloc] initWithModuleName:@"SampleB"];
    
     [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
