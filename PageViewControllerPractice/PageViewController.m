//
//  PageViewController.m
//  PageViewControllerPractice
//
//  Created by Trustin Harris on 7/23/18.
//  Copyright © 2018 xToBeAnnounce. All rights reserved.
//

#import "PageViewController.h"
#import "ContentViewController.h"
#import "Content2ViewController.h"
#import "Content3ViewController.h"


@interface PageViewController ()<UIPageViewControllerDataSource,UIPageViewControllerDelegate>

@property (strong,nonatomic) NSArray *viewControllerArrary;
@property (strong,nonatomic) UIPageControl *pageControl;

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSource = self;
    self.delegate = self;
    
    //creates instances of the Viewcontrollers
    ContentViewController *content1VC = [[ContentViewController alloc]init];
    Content2ViewController *content2VC = [[Content2ViewController alloc]init];
    Content3ViewController *content3VC = [[Content3ViewController alloc]init];
    
    self.viewControllerArrary = @[content1VC,content2VC,content3VC];
    [self setViewControllers:@[content1VC] direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion: nil];
    [self configurePageControl];
    
}

-(void)configurePageControl{
    self.pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(128, 630 , 120, 40)];
    self.pageControl.numberOfPages = self.viewControllerArrary.count;
    self.pageControl.currentPage = 0;
    self.pageControl.tintColor = UIColor.blackColor;
    self.pageControl.backgroundColor = UIColor.greenColor;
    self.pageControl.pageIndicatorTintColor = UIColor.whiteColor;
    self.pageControl.currentPageIndicatorTintColor = UIColor.blackColor;
    [self.view addSubview:self.pageControl];
}

- (void)pageViewController:(UIPageViewController *)pageViewController didFinishAnimating:(BOOL)finished previousViewControllers:(NSArray<UIViewController *> *)previousViewControllers transitionCompleted:(BOOL)completed {

    UIPageViewController *pagecontentVC = pageViewController.viewControllers[0];
    self.pageControl.currentPage = [self.viewControllerArrary indexOfObject:pagecontentVC];
}

-(UIViewController *)viewControllerAtIndex:(NSUInteger)index {
    UIViewController *vc = self.viewControllerArrary[index];
    return vc;
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerBeforeViewController:(nonnull UIViewController *)viewController {
    NSUInteger index = [self.viewControllerArrary indexOfObject:viewController];
    if (index  > 0   ) {
        return [self viewControllerAtIndex:index-1];
    }
    
    return nil;
}

- (nullable UIViewController *)pageViewController:(nonnull UIPageViewController *)pageViewController viewControllerAfterViewController:(nonnull UIViewController *)viewController {
    NSUInteger index = [self.viewControllerArrary indexOfObject:viewController];
    if (index < self.viewControllerArrary.count - 1) {
        return [self viewControllerAtIndex:index+1];
    }
    
    return nil;
}




@end
