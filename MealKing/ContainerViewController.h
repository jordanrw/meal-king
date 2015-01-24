//
//  ContainerViewController.h
//  PageViewControllerExample
//
//  Created by Mani Shankar on 29/08/14.
//  Copyright (c) 2014 makemegeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIViewController<UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;

@end