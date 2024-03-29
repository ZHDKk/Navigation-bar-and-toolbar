//
//  VCroot.m
//  导航栏和工具栏
//
//  Created by zh dk on 2017/8/25.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "VCroot.h"
#import "VCSecond.h"

@interface VCroot ()

@end

@implementation VCroot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    //设置导航栏风格颜色;半透明风格
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    //将风格设为不透明
    self.navigationController.navigationBar.translucent = NO;
    
    //设置导航栏颜色，不透明
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    
    //设置导航元素按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor greenColor];
    self.title = @"跟视图";

    //隐藏导航栏
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBar.hidden = NO;
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = btn;
    
    //实现工具栏对象，默认工具栏时隐藏
    self.navigationController.toolbarHidden = NO;
    
    self.navigationController.toolbar.translucent = NO;
    
    //创建3个工具栏按钮
    UIBarButtonItem *btn01 = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStylePlain target:nil action:nil];
    UIBarButtonItem *btn02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    UIButton *btnImg = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnImg setImage:[UIImage imageNamed:@"about.png"] forState:UIControlStateNormal];
    btnImg.frame = CGRectMake(0, 0, 60, 60);
    UIBarButtonItem *btn03 = [[UIBarButtonItem alloc]initWithCustomView:btnImg];
    
    //固定占位宽度按钮
    UIBarButtonItem *btnF01 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btnF01.width = 80;
    
    //创建自动计算宽度按钮
    UIBarButtonItem *btnF02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    //创建按钮数组
    NSArray *arrayBtns = [NSArray arrayWithObjects:btn01,btnF02,btn02,btnF02,btn03 ,nil];
    self.toolbarItems = arrayBtns;
    
}

-(void) pressNext{
    VCSecond *vc = [[VCSecond alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
