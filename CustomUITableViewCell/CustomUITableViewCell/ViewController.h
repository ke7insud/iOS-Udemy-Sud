//
//  ViewController.h
//  CustomUITableViewCell
//
//  Created by Sudhanshu on 02/03/16.
//  Copyright © 2016 sudh. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController < UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *tableAray,*foodImageArray,*timeArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableViewObject;



@end

