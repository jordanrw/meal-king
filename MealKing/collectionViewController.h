//
//  collectionViewController.h
//  MealKing
//
//  Created by Abdullah Abdurrah on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "recipeLayout.h"
#import "recipeCell.h"
#import "AppDelegate.h"

static NSString * const recipeCellIdentifier = @"recipeCell";

@interface collectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) IBOutlet recipeLayout *recipeLayout;

@property (nonatomic, strong) NSMutableArray *recipes;

@property AppDelegate *myApp;


@end
