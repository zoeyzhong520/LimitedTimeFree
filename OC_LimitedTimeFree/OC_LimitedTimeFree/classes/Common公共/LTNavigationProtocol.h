//
//  LTNavigationProtocol.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/13.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LTNavigationProtocol <NSObject>

@optional
- (void)addTitle;
- (void)addButton;

@end

@implementation UIViewController

- (void)addTitle {
    UILabel *label = [UILabel createLabel:@"限免" textColor:[UIColor colorWithRed:63/255.0 green:157/255.0 blue:223/255.0 alpha:1] font:[UIFont boldSystemFontOfSize:25]];
    navigationItem.titleView = label;
}

- (void)addButton {
    
}

@end

