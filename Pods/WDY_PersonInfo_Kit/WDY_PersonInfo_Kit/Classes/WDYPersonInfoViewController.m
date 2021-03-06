//
//  WDYPersonInfoViewController.m
//  MediatorArchitectureTest
//
//  Created by wdyzmx on 2020/6/11.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "WDYPersonInfoViewController.h"
#import <WDY_PersonPreference_Kit/CTMediator+WDYPersonPreference.h>
#define WGWidth [UIScreen mainScreen].bounds.size.width

@interface WDYPersonInfoViewController ()

@property (nonatomic, strong) UIButton *likeBtn;
@property (nonatomic, strong) UILabel *displayLab;
@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation WDYPersonInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.displayLab];
    [self.view addSubview:self.likeBtn];
    [self.view addSubview:self.imgView];
}

-(void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.displayLab.text = [NSString stringWithFormat:@"%@今年%ld岁，是个高富帅",self.name,self.age];
}

- (void)btnClick {
    __weak typeof(self)weakSelf = self;
    UIViewController *con = [[CTMediator sharedInstance] personPreferenceWithRemind:@"希望您能喜欢我" resultBlock:^(BOOL isLike) {
        __strong typeof(self)strongSelf = weakSelf;
        if (isLike) {
            [strongSelf.likeBtn setTitle:@"对方喜欢你" forState:UIControlStateNormal];
            strongSelf.likeBtn.backgroundColor = [UIColor cyanColor];
        }else{
            [strongSelf.likeBtn setTitle:@"对方讨厌你" forState:UIControlStateNormal];
            strongSelf.likeBtn.backgroundColor = [UIColor redColor];
        }
    }];
    [self.navigationController pushViewController:con animated:YES];
}

-(UILabel *)displayLab {
    if (!_displayLab) {
        _displayLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, WGWidth, 100)];
        _displayLab.textColor = [UIColor blackColor];
        _displayLab.textAlignment = NSTextAlignmentCenter;
        _displayLab.backgroundColor = [UIColor yellowColor];
    }
    return _displayLab;
}

-(UIButton *)likeBtn {
    if (!_likeBtn) {
        _likeBtn = [[UIButton alloc] initWithFrame:CGRectMake((WGWidth-100)*0.5, 220, 100, 40)];
        [_likeBtn setTitle:@"开始打分" forState:UIControlStateNormal];
        [_likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_likeBtn setBackgroundColor:[UIColor yellowColor]];
        [_likeBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _likeBtn;
}

-(UIImageView *)imgView {
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake((WGWidth-150)*0.5, 300, 150, 150)];
        //[UIImage imageNamed:@“图片名"]方式加载本地图片，这种方式默认是从mainBundle中去加载图片
//        _imgView.image = [UIImage imageNamed:@"Group@%2x.png"];
//        _imgView.image = [UIImage wg_imgWithName:@"Group" bundle:@"wgPersonInfoKit" targetClass:[self class]];
        _imgView.image = [UIImage imageNamed:@"noImage"];
        _imgView.backgroundColor = [UIColor cyanColor];
    }
    return _imgView;
}

@end
