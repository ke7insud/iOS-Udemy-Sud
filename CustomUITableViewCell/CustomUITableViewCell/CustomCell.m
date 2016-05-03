//
//  CustomCell.m
//  CustomUITableViewCell
//
//  Created by Sudhanshu on 02/03/16.
//  Copyright © 2016 sudh. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize foodName,imageView,time;
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
