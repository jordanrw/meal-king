//
//  recipeLayout.h
//  MealKing
//
//  Created by Abdullah Abdurrah on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface recipeLayout : UICollectionViewLayout

@property (nonatomic) UIEdgeInsets itemInsets;
@property (nonatomic) CGSize itemSize;
@property (nonatomic) CGFloat interItemSpacingY;
@property (nonatomic) NSInteger numberOfColumns;

@property (nonatomic, strong) NSDictionary *layoutInfo;

@end
