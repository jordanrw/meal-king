//
//  recipeCell.m
//  MealKing
//
//  Created by Abdullah Abdurrah on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import "recipeCell.h"



@implementation recipeCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];//[UIColor colorWithWhite:0.85f alpha:1.0f];
        
        self.mainPic = [[UIImageView alloc] initWithFrame:self.bounds];
        self.mainPic.contentMode = UIViewContentModeScaleAspectFill;
        self.mainPic.clipsToBounds = YES;
        
        self.name = [[UILabel alloc] init];
        self.name.text = @"HELLO WORLD";
        [self.name sizeToFit];
        [self.name setTextColor:[UIColor whiteColor]];
        [self.name setFrame:CGRectMake(0, self.contentView.frame.size.height-50, self.contentView.frame.size.width, 50)];
        [self.name setFont:[UIFont fontWithName:@"HelveticaNeue" size:36]];
        
        
        [self.contentView addSubview:self.mainPic];
        [self.contentView addSubview:self.name];
        
    }
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    
    //self.mainPic.image = nil;
    
    
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
