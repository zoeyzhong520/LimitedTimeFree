//
//  MainTabBarViewController.m
//  OC_LimitedTimeFree
//
//  Created by zzj on 16/12/12.
//  Copyright © 2016年 zzj. All rights reserved.
//

#import "MainTabBarViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createControllers];
}

- (void)createControllers {
    
    //视图控制器
    NSArray *ctrlNames = @[@"TimeLimitViewController",@"DepreciateViewController",@"FreeViewController",@"SubjectViewController",@"HotChartViewController"];
    //标题
    NSArray *titles = @[@"限免",@"降价",@"免费",@"专题",@"热榜"];
    //图片
    NSArray *imgNames = @[@"tabbar_limitfree",@"tabbar_reduceprice",@"tabbar_appfree",@"tabbar_subject",@"tabbar_rank"];
    
    NSMutableArray *array = [NSMutableArray array];
    for (int i=0;i<ctrlNames.count;i++) {
        //视图控制器
        NSString *ctrlName = ctrlNames[i];
        Class cls = NSClassFromString(ctrlName);
        UIViewController *ctrl = [[cls alloc] init];
        
        //文字
        ctrl.tabBarItem.title = titles[i];
        ctrl.title = titles[i];
        
        //图片
        ctrl.tabBarItem.image = [UIImage imageNamed:imgNames[i]];
        NSString *selectName = [NSString stringWithFormat:@"%@_press",imgNames[i]];
        ctrl.tabBarItem.selectedImage = [[UIImage imageNamed:selectName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        //导航
        UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:ctrl];
        [array addObject:navCtrl];
    }
    self.viewControllers = array;
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
