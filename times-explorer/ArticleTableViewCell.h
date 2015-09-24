//
//  ArticleTableViewCell.h
//  times-explorer
//
//  Created by Robert Aikins on 9/24/15.
//  Copyright © 2015 Rob Aikins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *articleThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *articleHeadline;
@property (weak, nonatomic) IBOutlet UILabel *articleCaption;

@end
