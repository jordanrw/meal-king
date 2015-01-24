//
//  Fetcher.h
//  MealKing
//
//  Created by Jordan White on 9/14/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Fetcher : NSObject

- (NSArray*)fetchFeedWith:(NSString *)inputURL;

@end
