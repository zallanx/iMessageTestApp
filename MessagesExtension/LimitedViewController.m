//
//  LimitedViewController.m
//  iMessage App Test
//
//  Created by Allan Zhang on 9/15/16.
//  Copyright © 2016 Allan Zhang. All rights reserved.
//

#import "LimitedViewController.h"

//This is the ChildViewController when the iMessage app is shown in compact view

@interface LimitedViewController ()

@end

@implementation LimitedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor blueColor]; //! this does not show
    
    UILabel *middleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    middleLabel.text = @"this is the childView"; //! however, this shows up
    middleLabel.center = CGPointMake(self.view.center.x, self.view.frame.size.height*0.20);
    [self.view addSubview:middleLabel];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
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
