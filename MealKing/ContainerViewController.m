//
//  ContainerViewController.m
//  PageViewControllerExample
//
//  Created by Mani Shankar on 29/08/14.
//  Copyright (c) 2014 makemegeek. All rights reserved.
//

#import "ContainerViewController.h"
#import "ImageViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageController.dataSource = self;
    [[self.pageController view] setFrame:[[self view] bounds]];
    
    ImageViewController *viewControllerObject = [self viewControllerAtIndex:0];
    
    //////ARRAY///////
    NSArray *viewControllers = [NSArray arrayWithObject:viewControllerObject];
    
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
}


#pragma  - UIPageViewController Methods
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(ImageViewController *)viewController indexNumber];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    
    
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(ImageViewController *)viewController indexNumber];
    
    
    index++;
    
    if (index == 11) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}

- (ImageViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    ImageViewController *childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ImageViewController"];
    
    childViewController.indexNumber = index;
    
    return childViewController;
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 8;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}
@end
