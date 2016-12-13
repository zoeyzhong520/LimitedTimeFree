//
//  UIButton+Util.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/13.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,BtnType) {
    left = 0,
    right = 1
};

@interface UIButton (Util)

//创建按钮的便利方法
+ (UIButton *)createBtnTitle:(NSString *)title bgImgName:(NSString *)bgImgName hightlightBgImgName:(NSString *)hightlightBgImgName target:(id)target action:(SEL)action;

@end
