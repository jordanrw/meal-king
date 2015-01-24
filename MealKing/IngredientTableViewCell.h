//
//  IngredientTableViewCell.h
//  MealKing
//
//  Created by Jordan White on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IngredientTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *picture;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *amount;

@end
