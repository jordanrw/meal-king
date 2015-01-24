//
//  ImageViewController.m
//  MealKing
//
//  Created by Jordan White on 9/14/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@property (nonatomic, strong) NSArray *allDescription;

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.allDescription = @[@"Spaghetti",
                         @"Get off your butt and turn on the burner to medium heat",
                         @"Fill your pot with some water. There is literally no way you can mess this up.",
                         @"Boil that crap.",
                         @"Put your pasta into the boiling water. You can do this, really.",
                         @"Grab your tomato sauce of choice. Ok fine, we’ll choose for you, grab THIS one.",
                         @"Fill a different, smaller pot called a “sauce pan” with your tomato sauce.",
                         @"Grab your gross, processed, pre-cooked meatballs.",
                         @"Bombs away.",
                         @"Get your plate, which in your case we are assuming it looks something like this.",
                         @"Enjoy your feast. You earned it, I guess."];
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    self.number.hidden = NO;
    
    self.image.image = [UIImage imageNamed:[NSString stringWithFormat:@"step_%li.png", (long)self.indexNumber]];
    self.descriptionLabel.text = [self.allDescription objectAtIndex:self.indexNumber];
    if (self.indexNumber == 0) {
        self.number.hidden = YES;
    }
    self.number.text = [NSString stringWithFormat:@"%li", self.indexNumber];
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
