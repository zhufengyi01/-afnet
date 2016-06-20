//
//  THActivityView.m
//  测试使用afnet
//
//  Created by 朱封毅 on 19/04/16.
//  Copyright © 2016年 tairan. All rights reserved.
//

#import "THActivityView.h"

@interface  THActivityView ()

{
    UIView *fatherView;
    
    id <THActivityViewDelegate> _delegate;
}
@end


@implementation THActivityView


+ (instancetype)sharedManager
{
    static THActivityView *_sharedManager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        _sharedManager = [[THActivityView alloc]init];
        
        [_sharedManager setupDefaultView];
        
    });
    return _sharedManager;
    
}

-(void)setupDefaultView
{
    self.frame= CGRectMake(100, 100, 60, 60);
    self.backgroundColor =  [UIColor redColor];
    self.clipsToBounds  =YES;
    self.layer.cornerRadius = self.frame.size.width/2;
    self.userInteractionEnabled = YES;

}
-(void)showInView:(UIView*)view delegate:(id <THActivityViewDelegate>)delegate
{
    [self showInView:view withImage:nil delegate:delegate];
    
}

-(void)showInView:(UIView*)view withImage:(UIImage*)image delegate:(id <THActivityViewDelegate>)delegate
{
    
    fatherView = view;
    _delegate = delegate;
    [fatherView addSubview:self];
    UIPanGestureRecognizer  *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
    [self addGestureRecognizer:pan];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [self addGestureRecognizer:tap];
}

#pragma mark 点击活动视图
-(void)tapAction:(UITapGestureRecognizer*)tap
{
    if (_delegate && [_delegate respondsToSelector:@selector(THActivityViewDelegateTap)]) {
        
        [_delegate THActivityViewDelegateTap];
    }
}

#pragma mark 拖动活动视图

-(void)panAction:(UIPanGestureRecognizer*)pan
{
    
    
    CGPoint  ponit =  [pan locationInView:fatherView];
    
    double screenW = [UIScreen mainScreen].bounds.size.width;
    double screenH = [UIScreen mainScreen].bounds.size.height;
    double x = ponit.x;
    double y = ponit.y;
    
    if (x <self.frame.size.width/2) {
        x = self.frame.size.width/2;
    }
    if (x > screenW - self.frame.size.width/2 ) {
        x = screenW - self.frame.size.width/2;
    }
    
    if (y< self.frame.size.height/2) {
        y = self.frame.size.height/2;
    }
    if (y>screenH - self.frame.size.height/2) {
        y = screenH - self.frame.size.height/2;
    }
    self.center = CGPointMake(x, y);
}



@end
