//
//  TLFDetailView.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TLDView.h"
#import "TLFDetailModel.h"
#import "TimeLimitModel.h"

@interface TLDView()

//头部部分

@property (weak, nonatomic) IBOutlet UIView *topView;

@property (weak, nonatomic) IBOutlet UIImageView *leftImgView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@property (weak, nonatomic) IBOutlet UIScrollView *topScrollView;

@property (weak, nonatomic) IBOutlet UILabel *descLabel;


//尾部部分
@property (weak, nonatomic) IBOutlet UIScrollView *bottomScrollView;

@end


@implementation TLDView

//头部部分的按钮点击事件
- (IBAction)clickBtn:(UIButton *)sender {
    NSInteger index = sender.tag-100;
    if (index == 0) {
        NSLog(@"share");
    }else if (index == 1) {
        NSLog(@"collect");
    }else{
        NSString *urlString = [NSString stringWithFormat:@"%@",_dModel.itunesUrl];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
    }
}


+ (instancetype)TLFDetailViewWithModel:(TLFDetailModel *)model {
    TLDView *view = [[[NSBundle mainBundle] loadNibNamed:@"TLDView" owner:nil options:nil] lastObject];
    [view config:model];
    
    return view;
}


- (void)config:(TLFDetailModel *)detailModel {
    _dModel = detailModel;
    
    self.frame = CGRectMake(0, 64, kScreenWidth, kScreenHeight-64-49);
    
    /*头部部分*/
    //图片
    NSURL *url = [NSURL URLWithString:detailModel.iconUrl];
    if (url != nil) {
        [self.leftImgView sd_setImageWithURL:url];
    }
    
    self.titleLabel.text = detailModel.name;
    self.priceLabel.text = [NSString stringWithFormat:@"原价:¥%@ %@ %@",detailModel.lastPrice,detailModel.priceTrend,detailModel.fileSize];
    self.typeLabel.text = [NSString stringWithFormat:@"类型:%@ 评分:%@",detailModel.categoryName,detailModel.starOverall];
    
    //topScrollView
    //循环创建图片
    for (int i=0;i<detailModel.photos.count;i++) {
        TLFDetailPhotos *photoModel = detailModel.photos[i];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth-10-10)*i, 0, kScreenWidth-10-10, 240)];
        NSURL *url = [NSURL URLWithString:photoModel.originalUrl];
        if (url != nil) {
            [imgView sd_setImageWithURL:url];
        }
        [self.topScrollView addSubview:imgView];
    }
    //设置滚动范围
    self.topScrollView.contentSize = CGSizeMake((kScreenWidth-10-10)*detailModel.photos.count, 0);
    
    self.descLabel.text = detailModel.description1;
    
}

- (void)configBottom:(TimeLimitModel *)detailModel {
    _model = detailModel;
    
    /*底部部分*/
    for (int i=0;i<detailModel.applications.count;i++) {
        TimeLimitDetail *model = detailModel.applications[i];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth-10-10)*i/5+10, 0, (kScreenWidth-10-10)/5-20, 50)];
        NSURL *url = [NSURL URLWithString:model.iconUrl];
        if (url != nil) {
            [imgView sd_setImageWithURL:url];
        }
        imgView.userInteractionEnabled = YES;
        imgView.tag = 200+i;
        
        //添加手势点击
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
        [imgView addGestureRecognizer:tap];
        
        [self.bottomScrollView addSubview:imgView];
    }
}

- (void)tapClick:(UITapGestureRecognizer *)Tap {
    
    NSInteger index = Tap.view.tag-200;
    TimeLimitDetail *model = _model.applications[index];
    
    //使用闭包
    self.jumpBlock(model.applicationId);
    
}

@end


















