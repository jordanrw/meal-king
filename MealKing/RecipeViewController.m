//
//  RecipeViewController.m
//  MealKing
//
//  Created by Jordan White on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import "RecipeViewController.h"

@interface RecipeViewController ()

@property BOOL favorite;

@end

@implementation RecipeViewController

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
    NSLog(@"hit the right VC");
    [super viewDidLoad];
    

    
    //set the tableView
    //[self.stepsList setBackgroundView:whiteBG];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tryThis:(id)sender {
    //self addChildViewController:<#(UIViewController *)#>
}


//recipes //list //profile (buttons)
- (IBAction)recipeButton:(id)sender {
    
}

- (IBAction)listButton:(id)sender {
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"List" message:@"eggs" delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
//    [alert show];
    
//    UIImageView *iView = [UIImageView alloc]
//    self.view addSubview:UIImageView
    
}

- (IBAction)profieButton:(id)sender {
    
}

//
- (IBAction)favoritesButton:(id)sender {
    
    if (self.favorite) {
        NSLog(@"inside");
        UIImage *tap = [UIImage imageNamed:@"favorite.png"];
        [self.favoriteButton setImage:tap forState:UIControlStateNormal];
        _favorite = FALSE;
        
        self.favoritesLabel.text = [NSString stringWithFormat:@"%i", 450];
    }
    else if (!self.favorite) {
        UIImage *tap = [UIImage imageNamed:@"favorite_active.png"];
        [self.favoriteButton setImage:tap forState:UIControlStateNormal];
        _favorite = TRUE;
        
//        int i = 450
        self.favoritesLabel.text = [NSString stringWithFormat:@"%i", 451];
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
