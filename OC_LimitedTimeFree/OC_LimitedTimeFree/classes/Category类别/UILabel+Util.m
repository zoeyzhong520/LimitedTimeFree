//
//  UILabel+Util.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/13.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "UILabel+Util.h"

@implementation UILabel (Util)

+ (UILabel *)createLabel:(NSString *)title textColor:(UIColor *)color font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    if (title) {
        label.text = title;
        label.textAlignment = NSTextAlignmentCenter;
    }
    
    if (color) {
        label.textColor = color;
    }
    
    if (font) {
        label.font = font;
    }
    return label;
}

@end
