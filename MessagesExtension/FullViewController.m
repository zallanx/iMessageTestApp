//
//  FullViewController.m
//  iMessage App Test
//
//  Created by Allan Zhang on 9/17/16.
//  Copyright © 2016 Allan Zhang. All rights reserved.
//

#import "FullViewController.h"

@interface FullViewController ()

@end

@implementation FullViewController

//This is the ChildViewController mentioned in the question. It is shown when the iMessage app goes into full view

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    self.view.backgroundColor = [UIColor yellowColor];
    NSLog(@"here we go");
    
    UILabel *middleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    middleLabel.text = @"this is fuller FVC";
    middleLabel.center = CGPointMake(self.view.center.x, self.view.frame.size.height*40);
    [self.view addSubview:middleLabel];
    
    UIButton *tapButton = [UIButton buttonWithType:UIButtonTypeSystem];
    tapButton.frame = CGRectMake(0, 0, 200, 40);
    [tapButton addTarget:self action:@selector(tappedOnTap) forControlEvents:UIControlEventTouchUpInside];
    [tapButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [tapButton setTitle:@"Tap" forState:UIControlStateNormal];
    tapButton.center = CGPointMake(middleLabel.center.x, middleLabel.center.y + 60);
    tapButton.userInteractionEnabled = YES;
    tapButton.enabled = YES;
    [self.view addSubview:tapButton];
    [self.view bringSubviewToFront:tapButton];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedOnView)];
    [self.view addGestureRecognizer:tapGesture];
    [self.view setUserInteractionEnabled:YES];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tappedOnTap
{
    NSLog(@"Tapped from the FullViewController");
}

- (void)tappedOnView
{
    NSLog(@"tapped on view");
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
