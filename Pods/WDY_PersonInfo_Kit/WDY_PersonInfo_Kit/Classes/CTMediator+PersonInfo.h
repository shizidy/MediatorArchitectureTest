//
//  CTMediator+PersonInfo.h
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (PersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
