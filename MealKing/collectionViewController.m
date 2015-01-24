//
//  collectionViewController.m
//  MealKing
//
//  Created by Abdullah Abdurrah on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import "collectionViewController.h"


@interface collectionViewController ()

@property NSArray *images;
@property NSArray *names;

@end

@implementation collectionViewController

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
    
    self.recipes = [NSMutableArray array];
    
    NSURL *urlPrefix =
    [NSURL URLWithString:@"https://raw.github.com/ShadoFlameX/PhotoCollectionView/master/Photos/"];
    
    NSInteger photoIndex = 0;
    
    
    self.images = [[NSArray alloc] initWithObjects:@"bakedpotato.png", @"friedchicken.png", @"grilledchicken.png", @"pizza.png", @"salmon.png", @"sandwich.png", @"spaghetti.png", @"tacos.png", @"wings.png", nil];
    self.names =  [[NSArray alloc] initWithObjects:@"Baked Potato", @"Fried Chicken", @"Grilled Chicken", @"Pizza", @"Salmon",@"Sandwich", @"Spanghetti", @"Tacos", @"Wings", nil];

    
    
    for (NSString *name in self.names) {
        
        recipeCell *cell = [[recipeCell alloc] init];
        
        
        [self.recipes addObject:cell];
        

        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 9;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    

    
    recipeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:recipeCellIdentifier forIndexPath:indexPath];
    
    NSLog(@"%@", self.images);
    
    
    cell.mainPic.image = [UIImage imageNamed:[self.images objectAtIndex:indexPath.section]];
    cell.name.text = [[self.names objectAtIndex:indexPath.section] uppercaseString];
    
    int r = arc4random()%20 + 15;
    cell.timeLabel.text = [NSString stringWithFormat:@"%i min ", r];
    
    return cell;
}



@end
