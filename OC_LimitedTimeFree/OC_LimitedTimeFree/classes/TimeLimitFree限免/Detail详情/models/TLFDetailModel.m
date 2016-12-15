//
//  TLFDetailModel.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 2016/12/15.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TLFDetailModel.h"

@implementation TLFDetailModel

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"description1":@"description"}];
}

@end

@implementation TLFDetailPhotos

@end
