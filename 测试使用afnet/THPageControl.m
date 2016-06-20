//
//  THPageControl.m
//  测试使用afnet
//
//  Created by 朱封毅 on 30/03/16.
//  Copyright © 2016年 tairan. All rights reserved.
//

#import "THPageControl.h"

@implementation THPageControl

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    for (UIView *view  in  self.subviews) {
        view.layer.borderColor = [UIColor whiteColor].CGColor;
        view.layer.borderWidth = 1;
    }

}
@end
