//
//  IngredientsTableViewController.m
//  MealKing
//
//  Created by Jordan White on 9/13/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import "IngredientsTableViewController.h"
#import "IngredientTableViewCell.h"

@interface IngredientsTableViewController ()

@property (nonatomic, strong) NSArray *ingredients;
@property (nonatomic, strong) NSArray *amount;
@property (nonatomic, strong) NSArray *pictures;

@end

@implementation IngredientsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];

    self.ingredients = @[@"Spaghetti", @"Ground Beef", @"Salt", @"White Sugar", @"Oregano", @"Black Pepper", @"Garlic Powder", @"Onions", @"Tomatoes"];
    self.amount = @[@"12 Onces", @"1 Pound", @"1 Teaspoon", @"3/4 Teaspoon", @"1 Teaspoon", @"1/4 Teaspoons", @"1/8 Teaspoons", @"2 Tablespoons", @"2 1/2 Cups"];
    self.pictures = @[@"spaghetti_.png", @"groundbeef.png", @"salt.png", @"whitesugar.png", @"oregano",@"blackpepper.png", @"garlicpowder.png", @"onions", @"tomatoes.png"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.ingredients count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    IngredientTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ingredient" forIndexPath:indexPath];
    cell.amount.text = @"Spaghetti";
    
    //[[cell contentView] setBackgroundColor:[UIColor clearColor]];
    //[[cell backgroundView] setBackgroundColor:[UIColor clearColor]];
    [cell setBackgroundColor:[UIColor clearColor]];
    
    cell.name.text = [self.ingredients objectAtIndex:indexPath.row];
    cell.amount.text = [self.amount objectAtIndex:indexPath.row];
    cell.picture.image = [UIImage imageNamed:[self.pictures objectAtIndex:indexPath.row]];
    
    return cell;
}

//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    cell.transform = CGAffineTransformMakeScale(0.3, 0.3);
//    [UIView animateWithDuration:0.5 animations:^{
//        cell.transform = CGAffineTransformIdentity;
//    }];
//}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
