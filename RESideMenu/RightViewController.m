//
//  RightViewController.m
//  RESideMenu
//
//  Created by CSX on 2017/3/4.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "RightViewController.h"
#import "RESideMenu.h"
#import "CenterTwoViewController.h"
#import "CenterOneViewController.h"

@interface RightViewController ()

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *myCreateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButton.frame = CGRectMake(self.view.frame.size.width-100, 40, 100, 100);
    [myCreateButton setBackgroundColor:[UIColor cyanColor]];
    [myCreateButton setTitle:@"第一界面1" forState:UIControlStateNormal];
    [myCreateButton addTarget:self action:@selector(buttonChoosOne:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myCreateButton];
    
    UIButton *myCreateButtonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButtonTwo.frame = CGRectMake(self.view.frame.size.width-100, 200, 100, 100);
    [myCreateButtonTwo setBackgroundColor:[UIColor cyanColor]];
    [myCreateButtonTwo setTitle:@"第二界面1" forState:UIControlStateNormal];
    [myCreateButtonTwo addTarget:self action:@selector(buttonChooseTwo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myCreateButtonTwo];
    

    
}

- (void)buttonChoosOne:(UIButton *)sender{
    [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[CenterOneViewController alloc] init]]
                                                 animated:YES];
    [self.sideMenuViewController hideMenuViewController];
}

- (void)buttonChooseTwo:(UIButton *)sender{
    [self.sideMenuViewController setContentViewController:[[UINavigationController alloc] initWithRootViewController:[[CenterTwoViewController alloc] init]]
                                                 animated:YES];
    [self.sideMenuViewController hideMenuViewController];
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
