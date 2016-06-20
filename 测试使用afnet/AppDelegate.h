//
//  AppDelegate.h
//  测试使用afnet
//
//  Created by 朱封毅 on 25/02/16.
//  Copyright © 2016年 tairan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol testProtocol;

@protocol testProtolDelegate;



@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;


@property(nonatomic,weak)id <testProtolDelegate>  testDelegate;




@end

