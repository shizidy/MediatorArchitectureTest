//
//  Target_WDYPersonInfo.m
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "Target_WDYPersonInfo.h"
#import "WDYPersonInfoViewController.h"

@implementation Target_WDYPersonInfo

- (UIViewController *)Action_WDYPersonInfoViewController:(NSDictionary *)param {
    WDYPersonInfoViewController *perInfo = [[WDYPersonInfoViewController alloc] init];
    perInfo.name = [param valueForKey:@"name"];
    perInfo.age = ((NSNumber *)[param valueForKey:@"age"]).integerValue;
    return perInfo;
}

@end
