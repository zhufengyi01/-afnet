//
//  THActivityView.h
//  测试使用afnet
//
//  Created by 朱封毅 on 19/04/16.
//  Copyright © 2016年 tairan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol THActivityViewDelegate <NSObject>


-(void)THActivityViewDelegateTap;

@end

@interface THActivityView : UIImageView


+ (instancetype)sharedManager;

/**
 *  显示的方法
 *
 *  @param view
 *  @param delegate 
 */
-(void)showInView:(UIView*)view delegate:(id <THActivityViewDelegate>)delegate;

-(void)showInView:(UIView*)view withImage:(UIImage*)image delegate:(id <THActivityViewDelegate>)delegate;

@end
