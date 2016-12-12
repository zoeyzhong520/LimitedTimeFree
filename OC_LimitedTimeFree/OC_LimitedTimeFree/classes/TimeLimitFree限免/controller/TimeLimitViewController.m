//
//  TimeLimitViewController.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "TimeLimitViewController.h"
#import "TimeLimitCell.h"

@interface TimeLimitViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, assign)NSInteger currentPage;

//数据
@property (nonatomic, strong)TimeLimitModel *model;

//表格
@property (nonatomic, strong)UITableView *tableView;

@end

@implementation TimeLimitViewController

//懒加载创建表格
- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight-64) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.currentPage = 1;
    [self downloadData];
}

//下载列表数据
- (void)downloadData {
    //http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=%ld
    NSString *urlString = [NSString stringWithFormat:@"http://iappfree.candou.com:8080/free/applications/limited?currency=rmb&page=%ld",self.currentPage];
    [LTDownloader downloadWithUrlString:urlString success:^(NSData *data) {
        
        NSError *err = nil;
        TimeLimitModel *model = [[TimeLimitModel alloc] initWithData:data error:&err];
        
        if (err) {
            NSLog(@"%@",err);
        }else{
            self.model = model;
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.tableView reloadData];
            });
        }
        
    } fail:^(NSError *error) {
        NSLog(@"%@",error);
    }];
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

#pragma mark -- UITableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.model.applications.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TimeLimitDetail *detail = self.model.applications[indexPath.row];
    UITableViewCell *cell = nil;
    cell = [TimeLimitCell TLCellForTableView:tableView atIndexPath:indexPath withModel:detail];
    
    return cell;
}

@end















