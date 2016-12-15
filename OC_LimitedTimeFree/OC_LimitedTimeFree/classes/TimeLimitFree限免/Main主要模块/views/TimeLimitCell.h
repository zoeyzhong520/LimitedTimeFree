//
//  TimeLimitCell.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimeLimitDetail;

@interface TimeLimitCell : UITableViewCell

//数据
@property (nonatomic, strong)TimeLimitDetail *detailModel;

//便利的创建cell的方法
+ (TimeLimitCell *)TLCellForTableView:(UITableView *)tableView atIndexPath:(NSIndexPath *)indexPath withModel:(TimeLimitDetail *)detailModel;


@end
