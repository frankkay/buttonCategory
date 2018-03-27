//
//  UIButton+direction.h
//  ChildrenAppraise
//
//  Created by frankay on 2018/3/27.
//  Copyright © 2018年 frankay. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, directionType) {
    left=0,
    top=1,
    right=2,
    bottom=3
};

@interface UIButton (direction)
-(void)buttonDistance:(CGFloat)distance direction:(directionType)direction;
@end
