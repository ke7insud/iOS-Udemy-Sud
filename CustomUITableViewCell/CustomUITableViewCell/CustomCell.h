//
//  CustomCell.h
//  CustomUITableViewCell
//
//  Created by Sudhanshu on 02/03/16.
//  Copyright © 2016 sudh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *foodName;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end
