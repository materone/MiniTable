//
//  SecondViewController.m
//  MiniTable
//
//  Created by tony on 14-4-25.
//  Copyright (c) 2014年 tony. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.computers = @[
  @{@"Name" : @"MacBook", @"Color" : @"White"},
  @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
  @{@"Name" : @"iMac", @"Color" : @"Silver"},
  @{@"Name" : @"Mac Mini 2", @"Color" : @"Blue"},
  @{@"Name" : @"Mac Mini 2 GSM", @"Color" : @"Red"},
  @{@"Name" : @"Mac Air", @"Color" : @"Black"},
  @{@"Name" : @"Mac Pro", @"Color" : @"Yellow"}];
    
    UITableView *tabView = (id)[self.view	viewWithTag:1];
    tabView.rowHeight = 64;
    UINib *nib = [UINib nibWithNibName:@"CustCellXIB" bundle:nil];
    [tabView registerNib:nib forCellReuseIdentifier:@"cell1"];
    [tabView setDelegate:self];
    [tabView setDataSource:self];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell1";
    
    CustCellXib *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[CustCellXib alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    // Configure the cell...
    NSDictionary *rowData = self.computers[indexPath.row];
    cell.NameValue.text = rowData[@"Name"];
    cell.ColorValue.text = rowData[@"Color"];
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //do some tableviewedit;
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //do some selected action
    //[self dismissViewControllerAnimated:NO completion:Nil];
}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */
@end
