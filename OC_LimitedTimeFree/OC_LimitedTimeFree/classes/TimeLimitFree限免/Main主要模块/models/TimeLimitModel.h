//
//  TimeLimitModel.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol TimeLimitDetail;
@protocol TimeLimitDetailPhotos;

@interface TimeLimitModel : JSONModel

@property (nonatomic, strong)NSArray<Optional,TimeLimitDetail> *applications;
@property (nonatomic,strong)NSArray<Optional,TimeLimitDetailPhotos> *photos;

@property (nonatomic, copy)NSString<Optional> *categoryName;
@property (nonatomic, copy)NSString<Optional> *fileSize;
@property (nonatomic, copy)NSString<Optional> *iconUrl;

@property (nonatomic, copy)NSString<Optional> *name;
@property (nonatomic, copy)NSString<Optional> *priceTrend;
@property (nonatomic, copy)NSString<Optional> *starOverall;

@property (nonatomic, copy)NSString<Optional> *description1;
@property (nonatomic, copy)NSString<Optional> *lastPrice;

@end

@interface TimeLimitDetail : JSONModel

@property (nonatomic, copy)NSString<Optional> *applicationId;
@property (nonatomic, assign)NSInteger categoryId;
@property (nonatomic, copy)NSString<Optional> *categoryName;

@property (nonatomic, copy)NSString<Optional> *currentPrice;
@property (nonatomic, copy)NSString<Optional> *description1;
@property (nonatomic, copy)NSString<Optional> *downloads;

@property (nonatomic, copy)NSString<Optional> *expireDatetime;
@property (nonatomic, copy)NSString<Optional> *favorites;
@property (nonatomic, copy)NSString<Optional> *fileSize;

@property (nonatomic, copy)NSString<Optional> *iconUrl;
@property (nonatomic, copy)NSString<Optional> *ipa;
@property (nonatomic, copy)NSString<Optional> *itunesUrl;

@property (nonatomic, copy)NSString<Optional> *lastPrice;
@property (nonatomic, copy)NSString<Optional> *name;
@property (nonatomic, copy)NSString<Optional> *priceTrend;

@property (nonatomic, copy)NSString<Optional> *ratingOverall;
@property (nonatomic, copy)NSString<Optional> *releaseDate;
@property (nonatomic, copy)NSString<Optional> *releaseNotes;

@property (nonatomic, copy)NSString<Optional> *shares;
@property (nonatomic, copy)NSString<Optional> *slug;
@property (nonatomic, copy)NSString<Optional> *starCurrent;

@property (nonatomic, copy)NSString<Optional> *starOverall;
@property (nonatomic, copy)NSString<Optional> *updateDate;
@property (nonatomic, copy)NSString<Optional> *version;

@end

@interface TimeLimitDetailPhotos : JSONModel

@property (nonatomic,copy)NSString<Optional> *originalUrl;
@property (nonatomic,copy)NSString<Optional> *smallUrl;

@end
