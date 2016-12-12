//
//  TimeLimitModel.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TimeLimitModel.h"

@implementation TimeLimitModel

@end

@implementation TimeLimitDetail

+ (JSONKeyMapper *)keyMapper {
    return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{@"description1":@"description"}];
}

@end