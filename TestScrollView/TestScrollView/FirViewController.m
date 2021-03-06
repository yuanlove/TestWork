//
//  FirViewController.m
//  TestScrollView
//
//  Created by Tesla_Chen on 2017/5/9.
//  Copyright © 2017年 Telsa_Chen. All rights reserved.
//

#import "FirViewController.h"
#import "SecViewController.h"

@interface FirViewController ()

@end

@implementation FirViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"first";
    
    UIButton *nickButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    nickButton.backgroundColor = [UIColor greenColor];
    [nickButton addTarget:self action:@selector(nickButtonAction:) forControlEvents:(UIControlEventTouchUpInside)];
    [nickButton setTitle:@"nick" forState:(UIControlStateNormal)];
    nickButton.frame = CGRectMake(200, 100, 100, 40);
    [self.view addSubview:nickButton];
}


-(void)nickButtonAction:(UIButton *)sender{
    
    NSArray *ControllerArray = self.navigationController.viewControllers;
    UIViewController *conVC = ControllerArray[ControllerArray.count - 2];
    if ([conVC isKindOfClass:[FirViewController class]]) {
        FirViewController *firVC = (FirViewController *)ControllerArray[ControllerArray.count - 2];
        firVC.second = YES;
    }
    
    SecViewController *secondVC = [[SecViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
    
    
    
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
