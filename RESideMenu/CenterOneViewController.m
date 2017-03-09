

//
//  CenterViewController.m
//  RESideMenu
//
//  Created by CSX on 2017/3/4.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "CenterOneViewController.h"
#import "RESideMenu.h"

@interface CenterOneViewController ()

@end

@implementation CenterOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"left1" style:UIBarButtonItemStylePlain target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"right1" style:UIBarButtonItemStylePlain target:self action:@selector(presentRightMenuViewController:)];
    
    
    self.title = @"第一个主界面";
    self.view.backgroundColor = [UIColor orangeColor];
    
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
