//
//  ViewController.m
//  测试button图片位置
//
//  Created by frankay on 2018/3/27.
//  Copyright © 2018年 frankay. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+direction.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *mybutton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.mybutton buttonDistance:10 direction:right];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
