//
//  IBViewController.m
//  IBScrollViewFloatingHeader
//
//  Created by Ivan Bruel on 04/01/14.
//  Copyright (c) 2014 Ivan Bruel. All rights reserved.
//

#import "IBViewController.h"

@interface IBViewController ()

@end

@implementation IBViewController

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    [cell.textLabel setText:array[indexPath.row]];
    return cell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    array =  [NSArray arrayWithObjects: @"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow",@"Red", @"Green", @"Blue", @"Yellow", nil];
    
    UIView* header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, 40)];
    [header setBackgroundColor:[UIColor redColor]];
    [self.tableView setFloatingHeaderView:header];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
