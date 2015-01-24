//
//  recipeCell.h
//  MealKing
//
//  Created by Abdullah Abdurrah on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface recipeCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView *mainPic;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;


@property  UILabel *time;


@end
