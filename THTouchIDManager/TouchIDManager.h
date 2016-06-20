//
//  THTouchIDApi.h
//  TaiHe
//
//  Created by 朱封毅 on 10/03/16.
//  Copyright © 2016年 TaiHe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TouchIDManager : NSObject



typedef void(^TouchIDManagerFinnishBlock)(BOOL success, NSError *error);

/**
 *  手机是否支持使用TouchId
 */
@property(nonatomic,readonly,assign)BOOL canUseTouchId;

/**
 * 初始化方法
 *
 *  @return return 单利
 */
+ (instancetype)sharedManager;


/**
 *  手机是否可以使用touchid
 *
 *  @return YES 可以使用
 */
-(BOOL)validateCanUseTouchId;

/**
 *    指纹验证解锁的主要方法
 *
 *  @param localizedFallbackTitle  指纹解锁
 *  @param localizedReason    指纹解锁弹出框副标题
 *  @param soureType          页面来源，预留字段，暂未启用
 *  @param touchBlock
 */
-(void)touchIDWithlocalizedFallbackTitle:(NSString *)localizedFallbackTitle localizedReason:(NSString*)localizedReason  success:(TouchIDManagerFinnishBlock) touchBlock;




@end
