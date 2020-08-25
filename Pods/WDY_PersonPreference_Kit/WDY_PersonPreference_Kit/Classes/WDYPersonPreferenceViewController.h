//
//  WDYPersonPreferenceViewController.h
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ResultBlock)(BOOL isLike);

@interface WDYPersonPreferenceViewController : UIViewController

@property (nonatomic, copy) NSString *remind;
@property (nonatomic, copy) ResultBlock myBlock;

@end

NS_ASSUME_NONNULL_END
