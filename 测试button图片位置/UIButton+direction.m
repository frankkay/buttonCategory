//
//  UIButton+direction.m
//  ChildrenAppraise
//
//  Created by frankay on 2018/3/27.
//  Copyright © 2018年 frankay. All rights reserved.
//

#import "UIButton+direction.h"

@implementation UIButton (direction)

- (void)buttonDistance:(CGFloat)distance direction:(directionType)direction{
    
//    self.titleLabel.backgroundColor =[UIColor redColor];
//    self.imageView.backgroundColor = [UIColor blueColor];
//    NSString *title = self.titleLabel.text;
    //    CGSize btnLabelsize = [title sizeWithFont:btn.titleLabel.font constrainedToSize:CGSizeMake(MAXFLOAT, btn.titleLabel.frame.size.height)];
//    CGSize btnLabelsize =[title boundingRectWithSize:CGSizeMake(MAXFLOAT, self.titleLabel.frame.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:nil context:nil].size;
    CGFloat imageWidth = self.imageView.image.size.width;
    CGFloat imageHeight = self.imageView.image.size.height;
    CGFloat labelWidth = self.titleLabel.frame.size.width;
    CGFloat labelHeight = self.titleLabel.frame.size.height;
    //    CGFloat different =  btnLabelsize.width-btn.titleLabel.frame.size.width;

    if(direction==0){
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, distance/2.0, 0, -distance/2.0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, -distance/2.0, 0, distance/2.0)];
        
    }else if(direction==1){
        [self setTitleEdgeInsets:UIEdgeInsetsMake(imageHeight/2.0+distance/2.0, -imageWidth/2.0, -imageHeight/2.0-distance/2.0, imageWidth/2.0)];
        
        [self setImageEdgeInsets:UIEdgeInsetsMake(-labelHeight/2.0-distance/2.0  , labelWidth/2.0, labelHeight/2.0+distance/2.0, -labelWidth/2.0)];
    }else if(direction==2){
        // 右
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -(imageWidth+distance/2.0), 0, imageWidth+distance/2.0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, labelWidth+distance/2.0, 0, -(labelWidth+distance/2.0))];
    }else if(direction==3){
        [self setTitleEdgeInsets:UIEdgeInsetsMake(-imageHeight/2.0-distance/2.0, -imageWidth/2.0, imageHeight/2.0+distance/2.0, imageWidth/2.0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(labelHeight/2.0+distance/2.0  , labelWidth/2.0, -labelHeight/2.0-distance/2.0, -labelWidth/2.0)];
    }else{
        
    }
}
@end
