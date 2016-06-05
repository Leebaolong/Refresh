//
//  ViewController.m
//  Refresh
//
//  Created by leezhihua on 16/6/5.
//  Copyright © 2016年 zhihua. All rights reserved.
//

#import "ViewController.h"
#import "RefreshManager/RefreshManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //开始刷新
    [RefreshManager refreshNormalWithBlockForViewController:self ofHeaderOrFooter:HeaderRefresh autoRefreshFooter:YES refreshingBlock:^{
        
    }];
    
    //结束刷新
    [RefreshManager endRefreshForViewController:self ofHeaderOrFooter:HeaderRefresh];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
