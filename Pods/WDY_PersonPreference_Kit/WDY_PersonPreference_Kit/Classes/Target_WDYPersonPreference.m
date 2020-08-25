//
//  Target_WDYPersonPreference.m
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "Target_WDYPersonPreference.h"
#import "WDYPersonPreferenceViewController.h"

@implementation Target_WDYPersonPreference

- (UIViewController *)Action_WDYPersonPreferenceViewController:(NSDictionary *)param{
    WDYPersonPreferenceViewController *per = [[WDYPersonPreferenceViewController alloc] init];
    per.remind = [param valueForKey:@"remind"];
    per.myBlock = [param valueForKey:@"myBlock"];
    return per;
}

@end
