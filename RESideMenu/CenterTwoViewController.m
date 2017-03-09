//
//  CenterTwoViewController.m
//  RESideMenu
//
//  Created by CSX on 2017/3/6.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "CenterTwoViewController.h"
#import "RESideMenu.h"

@interface CenterTwoViewController ()

@end

@implementation CenterTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.title = @"第二界面";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"left2" style:UIBarButtonItemStylePlain target:self action:@selector(presentLeftMenuViewController:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"right2" style:UIBarButtonItemStylePlain target:self action:@selector(presentRightMenuViewController:)];
    
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
