//
//  UIButton+Util.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/13.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "UIButton+Util.h"

@implementation UIButton (Util)

+ (UIButton *)createBtnTitle:(NSString *)title bgImgName:(NSString *)bgImgName hightlightBgImgName:(NSString *)hightlightBgImgName target:(id)target action:(SEL)action {
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 63, 30)];
    if (title) {
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    
    if (bgImgName) {
        [btn setBackgroundImage:[UIImage imageNamed:bgImgName] forState:UIControlStateNormal];
    }
    
    if (hightlightBgImgName) {
        [btn setBackgroundImage:[UIImage imageNamed:hightlightBgImgName] forState:UIControlStateHighlighted];
    }
    
    if (target && action) {
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    return btn;
}

@end
