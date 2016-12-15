//
//  StarView.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarView : UIView

@property (nonatomic,strong)UIImageView *curImgView;

- (void)changeStar:(CGFloat)num;

@end
