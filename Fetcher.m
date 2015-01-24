//
//  Fetcher.m
//  MealKing
//
//  Created by Jordan White on 9/14/14.
//  Copyright (c) 2014 Option White. All rights reserved.
//

#import "Fetcher.h"

@implementation Fetcher

- (NSArray*)fetchFeedWith:(NSString *)inputURL {
    
    //__weak FeedFetcher *weakSelf = self;
    __block NSArray *recipes = nil;
    
    NSURL *URL = [NSURL URLWithString:inputURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    [NSURLConnection sendAsynchronousRequest: request queue: [NSOperationQueue mainQueue] completionHandler:
     ^(NSURLResponse* response, NSData* data, NSError* connectionError){
         NSLog(@"data is kinda here");
         //the same as calling self, but its a safety to make sure self hasn't been set to nil
         //since this is inside of a 'block'
         recipes = [self extractData: data];
         
         //label.hidden = YES;
     }];
    return recipes;
}

#pragma mark - extraction

- (NSArray *) extractData: (NSData*) someData  {
    
    NSArray *allCourses = [NSJSONSerialization JSONObjectWithData:someData options:0 error:nil];
    NSLog(@"The data is downloaded");
    
    //save the data to the phone locally
    //NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    //[prefs setObject:allCourses forKey:@"courses"];
    
    return allCourses;
}


@end
