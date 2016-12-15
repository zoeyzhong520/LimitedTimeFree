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
    
}


+ (instancetype)TLFDetailViewWithModel:(TLFDetailModel *)model {
    TLDView *view = [[[NSBundle mainBundle] loadNibNamed:@"TLDView" owner:nil options:nil] lastObject];
    [view config:model];
    
    return view;
}


- (void)config:(TLFDetailModel *)detailModel {
    
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
        TimeLimitDetailPhotos *photoModel = detailModel.photos[i];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth-10-10)*i, 0, kScreenWidth-10-10, 160)];
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
    /*底部部分*/
    for (int i=0;i<detailModel.applications.count;i++) {
        TimeLimitModel *model = detailModel.applications[i];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth-10-10)*i/5, 0, 50, 50)];
        NSURL *url = [NSURL URLWithString:model.iconUrl];
        if (url != nil) {
            [imgView sd_setImageWithURL:url];
        }
        [self.bottomScrollView addSubview:imgView];
    }
    //设置滚动范围
    //self.bottomScrollView.contentSize = CGSizeMake((kScreenWidth-10-10)*detailModel.applications.count, 0);
}

@end


















