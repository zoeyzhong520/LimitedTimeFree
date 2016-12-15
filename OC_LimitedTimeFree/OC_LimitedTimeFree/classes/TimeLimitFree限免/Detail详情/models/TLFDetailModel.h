//
//  TLFDetailModel.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol TLFDetailPhotos;

@interface TLFDetailModel : JSONModel

@property (nonatomic,copy)NSString<Optional> *applicationId;
@property (nonatomic,copy)NSString<Optional> *appurl;
@property (nonatomic,assign)NSInteger categoryId;

@property (nonatomic,copy)NSString<Optional> *categoryName;
@property (nonatomic,copy)NSString<Optional> *currentPrice;
@property (nonatomic,copy)NSString<Optional> *currentVersion;

@property (nonatomic,copy)NSString<Optional> *description1;
@property (nonatomic,copy)NSString<Optional> *description_long;
@property (nonatomic,copy)NSString<Optional> *downloads;

@property (nonatomic,copy)NSString<Optional> *expireDatetime;
@property (nonatomic,copy)NSString<Optional> *fileSize;
@property (nonatomic,copy)NSString<Optional> *iconUrl;

@property (nonatomic,copy)NSString<Optional> *itunesUrl;
@property (nonatomic,copy)NSString<Optional> *language;
@property (nonatomic,copy)NSString<Optional> *lastPrice;

@property (nonatomic,copy)NSString<Optional> *name;
@property (nonatomic,copy)NSString<Optional> *newversion;
@property (nonatomic,strong)NSArray<Optional,TLFDetailPhotos> *photos;

@property (nonatomic,copy)NSString<Optional> *priceTrend;
@property (nonatomic,copy)NSString<Optional> *ratingOverall;
@property (nonatomic,copy)NSString<Optional> *releaseDate;

@property (nonatomic,copy)NSString<Optional> *releaseNotes;
@property (nonatomic,copy)NSString<Optional> *sellerId;
@property (nonatomic,copy)NSString<Optional> *sellerName;

@property (nonatomic,copy)NSString<Optional> *slug;
@property (nonatomic,copy)NSString<Optional> *starCurrent;
@property (nonatomic,copy)NSString<Optional> *starOverall;

@property (nonatomic,copy)NSString<Optional> *systemRequirements;
@property (nonatomic,copy)NSString<Optional> *updateDate;

@end

@interface TLFDetailPhotos : JSONModel

@property (nonatomic,copy)NSString<Optional> *originalUrl;
@property (nonatomic,copy)NSString<Optional> *smallUrl;

@end

/*
 {
 "applicationId" : "455680974",
 "appurl" : "1",
 "categoryId" : 6014,
 "categoryName" : "Game",
 "currentPrice" : "0",
 "currentVersion" : "2.3",
 "description" : "界面清新简单的音乐节奏游戏。游戏的操作非常简单，只需根据提示依次点击相应的图标即可，共有三种乐曲选择。",
 "description_long" : "一款音乐游戏。游戏很简单，五颜六色的按钮会以一个旋律闪烁，之后你要用相同的顺序重复演奏一遍，如果你错过一个音符，你就会失去一个生命值，所有的生命值用完游戏也就结束了哦。你是一个音乐爱好者么？准备开始与音乐的互动吧！",
 "downloads" : "5193",
 "expireDatetime" : "2016-12-15 11:24:58.0",
 "fileSize" : "16.69",
 "iconUrl" : "http://photo.candou.com/i/114/55b07f3725eae8b3cafc9bce10d16e46",
 "itunesUrl" : "http://itunes.apple.com/cn/app/rhythm-repeat/id455680974?mt=8",
 "language" : "EN",
 "lastPrice" : "12",
 "name" : "节奏重复",
 "newversion" : "1.1",
 "photos" : [
 {
 "originalUrl" : "http://photo.candou.com/s/o0/c8c0429206beb4d9d8b1b448296a6e4f",
 "smallUrl" : "http://photo.candou.com/s/o1/c8c0429206beb4d9d8b1b448296a6e4f"
 },
 {
 "originalUrl" : "http://photo.candou.com/s/o0/5e5217366ad8a049824ee2263d574393",
 "smallUrl" : "http://photo.candou.com/s/o1/5e5217366ad8a049824ee2263d574393"
 },
 {
 "originalUrl" : "http://photo.candou.com/s/o0/87eafb04aaf2341b7db4f6189ad67096",
 "smallUrl" : "http://photo.candou.com/s/o1/87eafb04aaf2341b7db4f6189ad67096"
 },
 {
 "originalUrl" : "http://photo.candou.com/s/o0/726dece4aa37b64009980582a029a3e3",
 "smallUrl" : "http://photo.candou.com/s/o1/726dece4aa37b64009980582a029a3e3"
 },
 {
 "originalUrl" : "http://photo.candou.com/s/o0/4d5436079d6a82b84bc4974d414dbf5f",
 "smallUrl" : "http://photo.candou.com/s/o1/4d5436079d6a82b84bc4974d414dbf5f"
 }
 ],
 "priceTrend" : "limited",
 "ratingOverall" : "0",
 "releaseDate" : "2014-07-01",
 "releaseNotes" : "Multi-Touch bug fixed",
 "sellerId" : "455680982",
 "sellerName" : "Filpo Games",
 "slug" : "rhythm-repeat",
 "starCurrent" : "4.0",
 "starOverall" : "4.0",
 "systemRequirements" : "与 iPhone、iPod touch、iPad 兼容。 需要 iOS 3.1.3 或更高版本",
 "updateDate" : "2014-10-17 15:45:27"
 }
 */