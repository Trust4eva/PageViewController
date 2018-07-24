//
//  ContentViewController.m
//  PageViewControllerPractice
//
//  Created by Trustin Harris on 7/23/18.
//  Copyright © 2018 xToBeAnnounce. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()
@property (strong,nonatomic) UIPageControl *pageControl;


@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   self.view.backgroundColor = UIColor.blueColor;
    
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(128, 558 , 120, 40)];
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 0;
    self.pageControl.tintColor = UIColor.blackColor;
    self.pageControl.backgroundColor = UIColor.greenColor;
    self.pageControl.pageIndicatorTintColor = UIColor.whiteColor;
    self.pageControl.currentPageIndicatorTintColor = UIColor.blackColor;
    [self.view addSubview:self.pageControl];
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
