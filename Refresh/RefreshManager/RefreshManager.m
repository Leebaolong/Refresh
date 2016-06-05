//
//  RefreshManager.m
//  Demo
//
//  Created by leezhihua on 16/5/10.
//  Copyright © 2016年 zhihua. All rights reserved.
//

#import "RefreshManager.h"



@implementation RefreshManager

+ (void)refreshNormalWithBlockForViewController:(UIViewController *)viewController
                               ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                              autoRefreshFooter:(BOOL)autoRefreshFooter
                                refreshingBlock:(Refresh)refreshingBlock {
    if (headerOrFooter == HeaderRefresh) {
        MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            refreshingBlock();
        }];
        
        if ([viewController isKindOfClass:[UITableViewController class]]) {
            UITableViewController *tableViewController = (UITableViewController *)viewController;
            tableViewController.tableView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UICollectionViewController class]]) {
            UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
            collectionViewController.collectionView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UIViewController class]]) {
            for (UIView *refreshView in viewController.view.subviews) {
                if ([refreshView isKindOfClass:[UITableView class]]) {
                    UITableView *tableView = (UITableView *)refreshView;
                    tableView.mj_header = header;
                    [header beginRefreshing];
                }
                if ([refreshView isKindOfClass:[UICollectionView class]]) {
                    UICollectionView *collectionView = (UICollectionView *)refreshView;
                    collectionView.mj_header = header;
                    [header beginRefreshing];
                }
            }
        }
        
    } else {
        if (autoRefreshFooter == YES) {
            MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
                refreshingBlock();
            }];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
            
        } else {
            
            MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
                refreshingBlock();
            }];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
        }
    }
}


+ (void)refreshNormalWithSelectorForViewController:(UIViewController *)viewController
                                  refreshingAction:(SEL)refreshingAction
                                  ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                                 autoRefreshFooter:(BOOL)autoRefreshFooter {
    if (headerOrFooter == HeaderRefresh) {
        MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:viewController refreshingAction:refreshingAction];
        
        if ([viewController isKindOfClass:[UITableViewController class]]) {
            UITableViewController *tableViewController = (UITableViewController *)viewController;
            tableViewController.tableView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UICollectionViewController class]]) {
            UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
            collectionViewController.collectionView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UIViewController class]]) {
            for (UIView *refreshView in viewController.view.subviews) {
                if ([refreshView isKindOfClass:[UITableView class]]) {
                    UITableView *tableView = (UITableView *)refreshView;
                    tableView.mj_header = header;
                    [header beginRefreshing];
                }
                if ([refreshView isKindOfClass:[UICollectionView class]]) {
                    UICollectionView *collectionView = (UICollectionView *)refreshView;
                    collectionView.mj_header = header;
                    [header beginRefreshing];
                }
            }
        }
        
    } else {
        if (autoRefreshFooter == YES) {
            MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:viewController refreshingAction:refreshingAction];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
            
        } else {
            
            MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:viewController refreshingAction:refreshingAction];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
        }
    }
}



+ (void)refreshGifWithBlockForViewController:(UIViewController *)viewController
                            ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                                  idleImages:(NSArray *)idleImages
                               pullingImages:(NSArray *)pullingImages
                            refreshingImages:(NSArray *)refreshingImages
                                noDataImages:(NSArray *)noDataImages
                           autoRefreshFooter:(BOOL)autoRefreshFooter
                             refreshingBlock:(Refresh)refreshingBlock {
    if (headerOrFooter == HeaderRefresh) {
        MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingBlock:^{
            refreshingBlock();
        }];

        [header setImages:idleImages forState:MJRefreshStateIdle];
        [header setImages:pullingImages forState:MJRefreshStatePulling];
        [header setImages:refreshingImages forState:MJRefreshStateRefreshing];
        if ([viewController isKindOfClass:[UITableViewController class]]) {
            UITableViewController *tableViewController = (UITableViewController *)viewController;
            tableViewController.tableView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UICollectionViewController class]]) {
            UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
            collectionViewController.collectionView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UIViewController class]]) {
            for (UIView *refreshView in viewController.view.subviews) {
                if ([refreshView isKindOfClass:[UITableView class]]) {
                    UITableView *tableView = (UITableView *)refreshView;
                    tableView.mj_header = header;
                    [header beginRefreshing];
                }
                if ([refreshView isKindOfClass:[UICollectionView class]]) {
                    UICollectionView *collectionView = (UICollectionView *)refreshView;
                    collectionView.mj_header = header;
                    [header beginRefreshing];
                }
            }
        }
        
    } else {
        if (autoRefreshFooter == YES) {
            MJRefreshAutoGifFooter *footer = [MJRefreshAutoGifFooter footerWithRefreshingBlock:^{
                refreshingBlock();
            }];
            
            [footer setImages:idleImages forState:MJRefreshStateIdle];
            [footer setImages:pullingImages forState:MJRefreshStatePulling];
            [footer setImages:refreshingImages forState:MJRefreshStateRefreshing];
            [footer setImages:noDataImages forState:MJRefreshStateNoMoreData];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }

        } else {
            
            MJRefreshBackGifFooter *footer = [MJRefreshBackGifFooter footerWithRefreshingBlock:^{
                refreshingBlock();
            }];
            [footer setImages:idleImages forState:MJRefreshStateIdle];
            [footer setImages:pullingImages forState:MJRefreshStatePulling];
            [footer setImages:refreshingImages forState:MJRefreshStateRefreshing];
            [footer setImages:noDataImages forState:MJRefreshStateNoMoreData];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
        }
    }
}



+ (void)refreshGifWithSelectorForViewController:(UIViewController *)viewController
                               refreshingAction:(SEL)refreshingAction
                               ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                                     idleImages:(NSArray *)idleImages
                                  pullingImages:(NSArray *)pullingImages
                               refreshingImages:(NSArray *)refreshingImages
                                   noDataImages:(NSArray *)noDataImages
                              autoRefreshFooter:(BOOL)autoRefreshFooter {
    
    if (headerOrFooter == HeaderRefresh) {
        MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:viewController refreshingAction:refreshingAction];
        [header setImages:idleImages forState:MJRefreshStateIdle];
        [header setImages:pullingImages forState:MJRefreshStatePulling];
        [header setImages:refreshingImages forState:MJRefreshStateRefreshing];
        
        if ([viewController isKindOfClass:[UITableViewController class]]) {
            UITableViewController *tableViewController = (UITableViewController *)viewController;
            tableViewController.tableView.mj_header = header;
            [header beginRefreshing];
        }
        if ([viewController isKindOfClass:[UICollectionViewController class]]) {
            UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
            collectionViewController.collectionView.mj_header = header;
            [header beginRefreshing];
        }
        
        if ([viewController isKindOfClass:[UIViewController class]]) {
            for (UIView *refreshView in viewController.view.subviews) {
                if ([refreshView isKindOfClass:[UITableView class]]) {
                    UITableView *tableView = (UITableView *)refreshView;
                    tableView.mj_header = header;
                    [header beginRefreshing];
                }
                if ([refreshView isKindOfClass:[UICollectionView class]]) {
                    UICollectionView *collectionView = (UICollectionView *)refreshView;
                    collectionView.mj_header = header;
                    [header beginRefreshing];
                }
            }
        }
    } else {
        if (autoRefreshFooter == YES) {
            MJRefreshAutoGifFooter *footer = [MJRefreshAutoGifFooter footerWithRefreshingTarget:viewController refreshingAction:refreshingAction];
            [footer setImages:idleImages forState:MJRefreshStateIdle];
            [footer setImages:pullingImages forState:MJRefreshStatePulling];
            [footer setImages:refreshingImages forState:MJRefreshStateRefreshing];
            [footer setImages:noDataImages forState:MJRefreshStateNoMoreData];
            footer.automaticallyHidden = YES;
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
            
        } else {
            
            MJRefreshBackGifFooter *footer = [MJRefreshBackGifFooter footerWithRefreshingTarget:viewController refreshingAction:refreshingAction];
            [footer setImages:idleImages forState:MJRefreshStateIdle];
            [footer setImages:pullingImages forState:MJRefreshStatePulling];
            [footer setImages:refreshingImages forState:MJRefreshStateRefreshing];
            [footer setImages:noDataImages forState:MJRefreshStateNoMoreData];
            footer.automaticallyHidden = YES;
            
            if ([viewController isKindOfClass:[UITableViewController class]]) {
                UITableViewController *tableViewController = (UITableViewController *)viewController;
                tableViewController.tableView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UICollectionViewController class]]) {
                UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
                collectionViewController.collectionView.mj_footer = footer;
                [footer beginRefreshing];
            }
            
            if ([viewController isKindOfClass:[UIViewController class]]) {
                for (UIView *refreshView in viewController.view.subviews) {
                    if ([refreshView isKindOfClass:[UITableView class]]) {
                        UITableView *tableView = (UITableView *)refreshView;
                        tableView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                    if ([refreshView isKindOfClass:[UICollectionView class]]) {
                        UICollectionView *collectionView = (UICollectionView *)refreshView;
                        collectionView.mj_footer = footer;
                        [footer beginRefreshing];
                    }
                }
            }
        }
    }
}



+ (void)endRefreshForViewController:(UIViewController *)viewController ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter {
    if (headerOrFooter == HeaderRefresh) {
        if ([viewController isKindOfClass:[UITableViewController class]]) {
            UITableViewController *tableViewController = (UITableViewController *)viewController;
            [tableViewController.tableView.mj_header endRefreshing];
        }
        if ([viewController isKindOfClass:[UICollectionViewController class]]) {
            UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
            [collectionViewController.collectionView.mj_header endRefreshing];
        }
        
        if ([viewController isKindOfClass:[UIViewController class]]) {
            for (UIView *refreshView in viewController.view.subviews) {
                if ([refreshView isKindOfClass:[UITableView class]]) {
                    UITableView *tableView = (UITableView *)refreshView;
                    [tableView.mj_header endRefreshing];
                }
                if ([refreshView isKindOfClass:[UICollectionView class]]) {
                    UICollectionView *collectionView = (UICollectionView *)refreshView;
                    [collectionView.mj_header endRefreshing];
                }
            }
        }

    } else {
        if ([viewController isKindOfClass:[UITableViewController class]]) {
            UITableViewController *tableViewController = (UITableViewController *)viewController;
            [tableViewController.tableView.mj_footer endRefreshing];
        }
        if ([viewController isKindOfClass:[UICollectionViewController class]]) {
            UICollectionViewController *collectionViewController = (UICollectionViewController *)viewController;
            [collectionViewController.collectionView.mj_footer endRefreshing];
        }
        
        if ([viewController isKindOfClass:[UIViewController class]]) {
            for (UIView *refreshView in viewController.view.subviews) {
                if ([refreshView isKindOfClass:[UITableView class]]) {
                    UITableView *tableView = (UITableView *)refreshView;
                    [tableView.mj_footer endRefreshing];
                }
                if ([refreshView isKindOfClass:[UICollectionView class]]) {
                    UICollectionView *collectionView = (UICollectionView *)refreshView;
                    [collectionView.mj_footer endRefreshing];
                }
            }
        }
    }
}



@end
