//
//  TimeLimitModel.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol TimeLimitDetail;

@interface TimeLimitModel : JSONModel

@property (nonatomic, strong)NSArray<Optional,TimeLimitDetail> *applications;

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

/*
 "applications" : [
 {
 "applicationId" : "455680974",
 "categoryId" : 6014,
 "categoryName" : "Game",
 "currentPrice" : "0",
 "description" : "界面清新简单的音乐节奏游戏。游戏的操作非常简单，只需根据提示依次点击相应的图标即可，共有三种乐曲选择。",
 "downloads" : "5191",
 "expireDatetime" : "2016-12-12 16:43:40.0",
 "favorites" : "273",
 "fileSize" : "16.69",
 "iconUrl" : "http://photo.candou.com/i/114/55b07f3725eae8b3cafc9bce10d16e46",
 "ipa" : "1",
 "itunesUrl" : "http://itunes.apple.com/cn/app/rhythm-repeat/id455680974?mt=8",
 "lastPrice" : "12",
 "name" : "节奏重复",
 "priceTrend" : "limited",
 "ratingOverall" : "0",
 "releaseDate" : "2014-07-01",
 "releaseNotes" : "Multi-Touch bug fixed",
 "shares" : "390",
 "slug" : "rhythm-repeat",
 "starCurrent" : "4.0",
 "starOverall" : "4.0",
 "updateDate" : "2014-10-17 15:45:27",
 "version" : "2.3"
 },

 */