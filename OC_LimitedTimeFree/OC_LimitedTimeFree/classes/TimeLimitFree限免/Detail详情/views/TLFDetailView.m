//
//  TLFDetailView.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TLFDetailView.h"

@interface TLFDetailView()

//头部部分
@property (weak, nonatomic) IBOutlet UIImageView *leftImgView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@property (weak, nonatomic) IBOutlet UIScrollView *topScrollView;

@property (weak, nonatomic) IBOutlet UILabel *descLabel;


//尾部部分
@property (weak, nonatomic) IBOutlet UIScrollView *bottomScrollView;

@end


@implementation TLFDetailView

//头部部分的按钮点击事件
- (IBAction)clickBtn:(UIButton *)sender {
    
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    return self;
}

@end
