//
//  TLFDetailView.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TLFDetailModel;
@class TimeLimitModel;

@interface TLDView : UIView

+ (instancetype)TLFDetailViewWithModel:(TLFDetailModel *)model;

- (void)config:(TLFDetailModel *)detailModel;

- (void)configBottom:(TimeLimitModel *)detailModel;

@end
