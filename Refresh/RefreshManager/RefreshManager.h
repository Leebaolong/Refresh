//
//  RefreshManager.h
//  Demo
//
//  Created by leezhihua on 16/5/10.
//  Copyright © 2016年 zhihua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MJRefresh.h"

/**
 *  刷新Block回调
 */
typedef void(^Refresh)();


typedef NS_ENUM(NSUInteger, HeaderOrFooterRefresh) {
    HeaderRefresh = 0,//头部刷新
    FooterRefresh //尾部加载
};

@interface RefreshManager : NSObject

/**
 *  Block回调刷新
 *
 *  @param viewController    要刷新的视图控制器
 *  @param headerOrFooter    要刷新头部还是尾部
 *  @param autoRefreshFooter 是否自动刷新尾部
 *  @param refreshingBlock   刷新Block回调
 */
+ (void)refreshNormalWithBlockForViewController:(UIViewController *)viewController
                               ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                              autoRefreshFooter:(BOOL)autoRefreshFooter
                                refreshingBlock:(Refresh)refreshingBlock;

/**
 *  带方法的刷新
 *
 *  @param viewController    要刷新的视图控制器
 *  @param refreshingAction  刷新方法
 *  @param headerOrFooter    要刷新头部还是尾部
 *  @param autoRefreshFooter 是否自动刷新尾部
 */
+ (void)refreshNormalWithSelectorForViewController:(UIViewController *)viewController
                                  refreshingAction:(SEL)refreshingAction
                                  ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                                 autoRefreshFooter:(BOOL)autoRefreshFooter;


/**
 *  Gif动画-Block回调刷新
 *
 *  @param viewController    要刷新的视图控制器
 *  @param headerOrFooter    要刷新头部还是尾部
 *  @param idleImages        普通状态的动画图片
 *  @param pullingImages     即将刷新状态的动画图片（一松开就会刷新的状态）
 *  @param refreshingImages  正在刷新状态的动画图片
 *  @param noDataImages      没有更多数据的动画图片
 *  @param autoRefreshFooter 是否自动刷新尾部
 *  @param refreshingBlock   刷新Block回调
 */
+ (void)refreshGifWithBlockForViewController:(UIViewController *)viewController
                            ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                                  idleImages:(NSArray *)idleImages
                               pullingImages:(NSArray *)pullingImages
                            refreshingImages:(NSArray *)refreshingImages
                                noDataImages:(NSArray *)noDataImages
                           autoRefreshFooter:(BOOL)autoRefreshFooter
                             refreshingBlock:(Refresh)refreshingBlock;


/**
 *   Gif动画-带方法的刷新
 *
 *  @param viewController    要刷新的视图控制器
 *  @param refreshingAction  刷新方法
 *  @param headerOrFooter    要刷新头部还是尾部
 *  @param idleImages        普通状态的动画图片
 *  @param pullingImages     即将刷新状态的动画图片（一松开就会刷新的状态）
 *  @param refreshingImages  正在刷新状态的动画图片
 *  @param noDataImages      没有更多数据的动画图片
 *  @param autoRefreshFooter 是否自动刷新尾部
 */
+ (void)refreshGifWithSelectorForViewController:(UIViewController *)viewController
                               refreshingAction:(SEL)refreshingAction
                               ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter
                                     idleImages:(NSArray *)idleImages
                                  pullingImages:(NSArray *)pullingImages
                               refreshingImages:(NSArray *)refreshingImages
                                   noDataImages:(NSArray *)noDataImages
                           autoRefreshFooter:(BOOL)autoRefreshFooter;





/**
 *  结束刷新
 *
 *  @param viewController 要结束刷新的视图控制器
 *  @param headerOrFooter 要结束头部刷新还是尾部刷新
 */
+ (void)endRefreshForViewController:(UIViewController *)viewController
                   ofHeaderOrFooter:(HeaderOrFooterRefresh)headerOrFooter;




@end
