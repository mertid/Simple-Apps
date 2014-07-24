//
//  MFLTableViewController.m
//  List App
//
//  Created by SYBIL TRUTH on 7/23/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import "MFLTableViewController.h"


@interface MFLTableViewController ()

@property (nonatomic) NSArray * info;


// create an array for students - NSStrings

// create an array for colors -UIColors

// create an array for sizes - NUNumbers

// add last three days, set 7 students names in students array, set 7 UICOLORS, set 7 numbers

//



@end

@implementation MFLTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
     
    // dictionary info//
        
        self.info = @[
                      @{
                          @"day":@"Monday",
                          @"student":@"Mary Jay",
                          @"color":[UIColor redColor]
                          @"font":@32
                          },
                      @{
                         @"day":@"Tuesday",
                         @"student":@"Ludacris",
                         @"color":[UIColor greenColor]
                         @"font":@27
                         },
                      @{
                         @"day":@"Wednesday",
                         @"student":@"Lil Wayne",
                         @"color":[UIColor orangeColor]
                         @"font":@32
                         },
                      @{
                          
                          @"day":@"Monday",
                      @"student":@"Mary Beth",
                      @"color":[UIColor redColor]
                      @"font":@32
return self;

}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.listItems.count;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@""];
    
    
    
    // NSString * listItems = [self.listItems objectAtIndex:indexPath.row];

    
    NSString * listItems = self.listItems[indexPath.row];
    
    NSLog(@"listItems = %@", listItems);
    
    NSString * colorItems = self.colorItems[indexPath.row];
    
    NSLog(@"colorItems = %@", colorItems);
    
    cell.textLabel.text = listItems;
    
    NSString * studentItems =self.studentItems[indexPath.row];
    
    cell.detailTextLabel.text = studentItems;
    
    // Colors//
    
    UIColor * color = self.colorItems[indexPath.row];
    
    cell.backgroundColor = color;
    
    // Number //
    
    NSNumber * number = self.numberItems[indexPath.row];
    
    cell.textLabel.font = [UIFont systemFontOfSize:[number intValue]];
                
    
    
    
    // there is a sub text that will be set by student name above is a hint
    
    // set background color in color in array
    
    
    // set text label font size to a number for last array
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
