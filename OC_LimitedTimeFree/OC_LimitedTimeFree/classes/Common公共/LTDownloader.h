//
//  LTDownloader.h
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LTDownloader : NSObject

+ (void)downloadWithUrlString:(NSString *)urlString success:(void(^)(NSData *data))finsishBlcok fail:(void(^)(NSError *error))failBlcok;

@end
