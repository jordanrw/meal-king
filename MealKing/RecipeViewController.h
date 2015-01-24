//
//  RecipeViewController.h
//  MealKing
//
//  Created by Jordan White on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController

//basic buttons
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;
@property (weak, nonatomic) IBOutlet UIButton *listButton;
@property (weak, nonatomic) IBOutlet UIButton *profileButton;



//big views
@property (weak, nonatomic) IBOutlet UIImageView *foodPic;
@property (weak, nonatomic) IBOutlet UITableView *ingredientsList;
@property (weak, nonatomic) IBOutlet UITableView *stepsList;
@property (weak, nonatomic) IBOutlet UIView *infoView;

//properties of the InfoView
@property (weak, nonatomic) IBOutlet UILabel *favoritesLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentsLabel;
@property (weak, nonatomic) IBOutlet UILabel *difficultyLabel;


@end
