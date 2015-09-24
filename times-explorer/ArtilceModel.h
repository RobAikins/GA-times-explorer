//
//  ArtilceModel.h
//  times-explorer
//
//  Created by Robert Aikins on 9/24/15.
//  Copyright © 2015 Rob Aikins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArtilceModel : NSObject

+ (void) articlesForSearch:(NSString *) searchText withCompletion:(void (^)(NSArray *articles)) completion;

@end
