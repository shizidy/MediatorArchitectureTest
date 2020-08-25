//
//  CTMediator+PersonInfo.m
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "CTMediator+PersonInfo.h"

NSString *const kCTMediatorWDYPersonInfoTarget = @"WDYPersonInfo";
NSString *const kCTMediatorWDYPersonInfoAction = @"WDYPersonInfoViewController";

@implementation CTMediator (PersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:name forKey:@"name"];
    [dic setValue:@(age) forKey:@"age"];
    
    return [self performTarget:kCTMediatorWDYPersonInfoTarget action:kCTMediatorWDYPersonInfoAction params:dic shouldCacheTarget:NO];
}

@end
