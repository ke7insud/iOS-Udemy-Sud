//
//  ViewController.m
//  CustomUITableViewCell
//
//  Created by Sudhanshu on 02/03/16.
//  Copyright © 2016 sudh. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    tableAray = [[NSMutableArray alloc] initWithObjects:@"Food 1",@"Food 2",@"Food 3",@"Food 4",@"Food 5",@"Food 6",@"Food 7",@"Food 8",@"Food 9",@"Food 10", nil];
    
    foodImageArray = [[NSMutableArray alloc] initWithObjects:@"image1.png",@"image2.png",@"image3.png",@"image4.png",@"image5.png",@"image6.png",@"image7.png",@"image8.png",@"image9.png",@"image10.png",@"image11.png", nil];
    
    timeArray = [[NSMutableArray alloc] initWithObjects:@"30 min",@"22 min",@"5 min",@"44 min",@"22 min",@"33 min",@"50 min",@"25 min",@"12 min",@"10 min", nil];

    [self.tableViewObject registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    
    return [tableAray count];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    return 90;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    static NSString *simpleTableIdentifier = @"CustomCell";
    
    
    
    CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
//    if (cell == nil)
//        
//    {
//        
//        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
//        
//        cell = [nibArray objectAtIndex:0];
//        
//    }
    
    long index = indexPath.row;
    NSLog(@"INdex value %ld",index);
    cell.foodName.text = [tableAray objectAtIndex:index];
    
    cell.imageView.image = [UIImage imageNamed:[foodImageArray objectAtIndex:index]];
    
    cell.time.text = [timeArray objectAtIndex:index];
    
    
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    UIAlertView *selectedAlert = [[UIAlertView alloc]
                                  
                                  initWithTitle:[NSString stringWithFormat:@"%@ Selected", [tableAray objectAtIndex:indexPath.row]] message:[NSString stringWithFormat:@"It takes %@ to prepare!",[timeArray objectAtIndex:indexPath.row]] delegate:nil cancelButtonTitle:@"Got It" otherButtonTitles:nil];
    [selectedAlert show];
    
}

@end
