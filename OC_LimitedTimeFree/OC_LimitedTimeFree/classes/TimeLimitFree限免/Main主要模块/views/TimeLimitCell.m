//
//  TimeLimitCell.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TimeLimitCell.h"
#import "TimeLimitModel.h"
#import "StarView.h"

@interface TimeLimitCell()

@property (weak, nonatomic) IBOutlet UIImageView *bgImgView;

@property (weak, nonatomic) IBOutlet UIImageView *leftImgView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *currentPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@property (weak, nonatomic) IBOutlet UILabel *shareLabel;

@property (weak, nonatomic) IBOutlet UILabel *collectLabel;

@property (weak, nonatomic) IBOutlet UILabel *downloadLabel;

@property (weak, nonatomic) IBOutlet StarView *starView;


@end

@implementation TimeLimitCell

+ (TimeLimitCell *)TLCellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withModel:(TimeLimitDetail *)detailModel {
    
    static NSString *cellId = @"timeLimitCellId";
    TimeLimitCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TimeLimitCell" owner:nil options:nil] lastObject];
    }
    
    if (indexPath.row%2 == 0) {
        cell.bgImgView.image = [UIImage imageNamed:@"cate_list_bg1"];
    }else{
        cell.bgImgView.image = [UIImage imageNamed:@"cate_list_bg2"];
    }
    
    cell.detailModel = detailModel;
    return cell;
    
}

/*
 set方法作用：提供一个方法给外界设置成员变量的值，有一定的安全性
 
 set方法的命名规范：方法法必须以set开头，后面跟上成员变量的名称，并且成员变量的名称首字母大写
 */
- (void)setDetailModel:(TimeLimitDetail *)detailModel {
    _detailModel = detailModel;
    
    //图片
    NSURL *url = [NSURL URLWithString:detailModel.iconUrl];
    if (url != nil) {
        [self.leftImgView sd_setImageWithURL:url];
    }
    
    //标题
    self.titleLabel.text = detailModel.name;
    
    //现价
    self.currentPriceLabel.text = [NSString stringWithFormat:@"现价:¥ %@",detailModel.currentPrice];
    
    //原价
    self.priceLabel.text = [NSString stringWithFormat:@"¥ %@",detailModel.lastPrice];
    
    //类型
    self.typeLabel.text = detailModel.categoryName;
    
    //分享
    self.shareLabel.text = [NSString stringWithFormat:@"分享:%@",detailModel.shares];
    //收藏
    self.collectLabel.text = [NSString stringWithFormat:@"收藏:%@",detailModel.favorites];
    
    //下载
    self.downloadLabel.text = [NSString stringWithFormat:@"下载:%@",detailModel.downloads];
    
    //星级
    [self.starView changeStar:[detailModel.starCurrent floatValue]];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
