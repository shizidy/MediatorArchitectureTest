//
//  CTMediator+WDYPersonPreference.h
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <CTMediator/CTMediator.h>

typedef void(^ResultBlock)(BOOL isLike);

@interface CTMediator (WDYPersonPreference)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block;

@end

