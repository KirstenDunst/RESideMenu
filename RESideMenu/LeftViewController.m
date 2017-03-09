//
//  LeftViewController.m
//  RESideMenu
//
//  Created by CSX on 2017/3/4.
//  Copyright © 2017年 宗盛商业. All rights reserved.
//

#import "LeftViewController.h"
#import "RESideMenu.h"
#import "CenterOneViewController.h"
#import "CenterTwoViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *myCreateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButton.frame = CGRectMake(0, 40, 100, 100);
    [myCreateButton setBackgroundColor:[UIColor grayColor]];
    [myCreateButton setTitle:@"第一界面2" forState:UIControlStateNormal];
    [myCreateButton addTarget:self action:@selector(buttonChoosOne:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myCreateButton];
    
    UIButton *myCreateButtonTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    myCreateButtonTwo.frame = CGRectMake(0, 200, 100, 100);
    [myCreateButtonTwo setBackgroundColor:[UIColor grayColor]];
    [myCreateButtonTwo setTitle:@"第二界面2" forState:UIControlStateNormal];
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
