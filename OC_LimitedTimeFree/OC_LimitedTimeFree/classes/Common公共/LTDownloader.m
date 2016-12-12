//
//  LTDownloader.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "LTDownloader.h"

@implementation LTDownloader

+ (void)downloadWithUrlString:(NSString *)urlString success:(void (^)(NSData *))finsishBlcok fail:(void (^)(NSError *))failBlcok {
    
    //创建NSURL
    NSURL *url = [NSURL URLWithString:urlString];
    
    //request
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    //创建AFURLSessionManager对象
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:config];
    
    //设置返回的数据是原始的二进制数据
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    //下载对象
    NSURLSessionDataTask *task = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
       
        if (error) {
            //请求失败
            failBlcok(error);
        }else{
            //请求成功
            NSHTTPURLResponse *r = (NSHTTPURLResponse *)response;
            if (r.statusCode == 200) {
                finsishBlcok(responseObject);
            }else{
                //请求失败
                NSError *err = [NSError errorWithDomain:urlString code:r.statusCode userInfo:@{@"msg":@"下载失败"}];
                failBlcok(err);
            }
        }
    }];
    
    [task resume];
}

@end
