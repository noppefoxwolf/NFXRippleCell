//
//  ViewController.m
//  NFXRippleCellDemo
//
//  Created by Tomoya_Hirano on 2014/07/14.
//  Copyright (c) 2014年 Tomoya_Hirano. All rights reserved.
//

#import "ViewController.h"
#import "NFXRippleCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark tableviewdelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NFXRippleCell*cell = [[NFXRippleCell alloc] initWithStyle:0 reuseIdentifier:@"cell"];
    cell.textLabel.text = @"Touch and Ripple.";
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
}

@end
