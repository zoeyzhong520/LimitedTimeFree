//
//  TLFDetailViewController.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/14.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TLFDetailViewController.h"
#import "TLFDetailModel.h"
#import "TLFDetailView.h"

@interface TLFDetailViewController ()

@property (nonatomic,strong)TLFDetailModel *model;

@property (nonatomic,strong)TLFDetailView *detailView;

@end

@implementation TLFDetailViewController

- (TLFDetailView *)detailView {
    if (_detailView == nil) {
        _detailView = [[TLFDetailView alloc] init];
        [self.view addSubview:_detailView];
        
        //约束
        [_detailView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self).insets(UIEdgeInsetsMake(64, 0, kScreenHeight-64, 0));
        }];
    }
    return _detailView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self configView];
    
    [self downloadData];
}

//下载数据
- (void)downloadData {
    NSString *urlString = [NSString stringWithFormat:@"http://iappfree.candou.com:8080/free/applications/%@?currency=rmb",self.applicationId];
    [LTDownloader downloadWithUrlString:urlString success:^(NSData *data) {
        NSError *error = nil;
        if (error) {
            NSLog(@"%@",error);
        }else{
            TLFDetailModel *model = [[TLFDetailModel alloc] initWithData:data error:nil];
            self.model = model;
            
            //刷新UI
            dispatch_async(dispatch_get_main_queue(), ^{
               
            });
        }
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}

- (void)configView {
    UIButton *leftBtn = [UIButton createBtnTitle:@"返回" bgImgName:@"buttonbar_back" hightlightBgImgName:nil target:self action:@selector(clickLeftBtn)];
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    
    UILabel *label = [UILabel createLabel:@"应用详情" textColor:[UIColor colorWithRed:63/255.0 green:157/255.0 blue:223/255.0 alpha:1] font:[UIFont boldSystemFontOfSize:25]];
    self.navigationItem.titleView = label;
}

- (void)clickLeftBtn {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
