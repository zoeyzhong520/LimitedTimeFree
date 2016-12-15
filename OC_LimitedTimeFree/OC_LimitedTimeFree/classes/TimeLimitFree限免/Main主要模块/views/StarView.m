//
//  StarView.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "StarView.h"

@implementation StarView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self config];
    }
    return self;
}

- (void)config {
    self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"StarsBackground"]];
    
    _curImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"StarsForeground"]];
    _curImgView.frame = self.bounds;
    _curImgView.contentMode = UIViewContentModeLeft;
    _curImgView.clipsToBounds = YES;
    [self addSubview:_curImgView];
}

- (void)changeStar:(CGFloat)num {
    CGSize tmpSize = CGSizeMake(65*num/5.0, 20);
    CGRect frame = self.bounds;
    frame.size = tmpSize;
    _curImgView.frame = frame;
}

@end
