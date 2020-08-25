//
//  CTMediator+WDYPersonPreference.m
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "CTMediator+WDYPersonPreference.h"

NSString *const kCTMediatorWDYPersonPreferenceTarget = @"WDYPersonPreference";
NSString *const kCTMediatorWDYPersonPreferenceAction = @"WDYPersonPreferenceViewController";

@implementation CTMediator (WDYPersonPreference)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block {
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:remind forKey:@"remind"];
    [dic setValue:block forKey:@"myBlock"];
    
    return [self performTarget:kCTMediatorWDYPersonPreferenceTarget action:kCTMediatorWDYPersonPreferenceAction params:dic shouldCacheTarget:NO];
}

@end
