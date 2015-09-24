//
//  ArtilceModel.m
//  times-explorer
//
//  Created by Robert Aikins on 9/24/15.
//  Copyright © 2015 Rob Aikins. All rights reserved.
//

#import "ArtilceModel.h"
#import "AFHTTPRequestOperationManager.h"
#import "Constants.h"

@implementation ArtilceModel

+ (void) articlesForSearch:(NSString *) searchText withCompletion:(void (^)(NSArray *articles)) completion {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSString *url = [NSString stringWithFormat:@"%@?q=%@&api-key=%@", BASE_TIMES_URL, [searchText stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]], TIME_API_KEY];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, NSDictionary *responseObject) {
        completion(responseObject[@"response"][@"docs"]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

@end
