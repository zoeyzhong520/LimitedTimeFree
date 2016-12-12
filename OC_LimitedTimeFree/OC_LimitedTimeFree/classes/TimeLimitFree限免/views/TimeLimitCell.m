//
//  TimeLimitCell.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TimeLimitCell.h"

@interface TimeLimitCell()

@property (weak, nonatomic) IBOutlet UIImageView *leftImgView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *currentPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@property (weak, nonatomic) IBOutlet UILabel *shareLabel;

@property (weak, nonatomic) IBOutlet UILabel *collectLabel;

@property (weak, nonatomic) IBOutlet UILabel *downloadLabel;


@end

@implementation TimeLimitCell

+ (TimeLimitCell *)TLCellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withModel:(TimeLimitDetail *)detailModel {
    
    static NSString *cellId = @"timeLimitCellId";
    TimeLimitCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TimeLimitCell" owner:nil options:nil] lastObject];
    }
    
    cell.detailModel = detailModel;
    return cell;
    
}

- (void)configDetailModel:(TimeLimitDetail *)detailModel {
    
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
    self.priceLabel.text = detailModel.lastPrice;
    
    //类型
    self.typeLabel.text = detailModel.categoryName;
    
    //分享
    self.shareLabel.text = [NSString stringWithFormat:@"分享:%@",detailModel.shares];
    //收藏
    self.collectLabel.text = [NSString stringWithFormat:@"收藏:%@",detailModel.favorites];
    
    //下载
    self.downloadLabel.text = [NSString stringWithFormat:@"下载:%@",detailModel.downloads];
    
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
