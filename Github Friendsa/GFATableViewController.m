//
//  GFATableViewController.m
//  Github Friendsa
//
//  Created by SYBIL TRUTH on 7/24/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
// helvetica ultra lite thin 30pt
// profile ui button
// gists link
// height of row is 115 pt
// helvetica thin 12pt

#import "GFATableViewController.h"
#import "GFATableViewCell.h"
#import "GFAViewController.h"
#import "GRAGithubRequest.h"
@interface GFATableViewController ()

@end

@implementation GFATableViewController
{
    UITextField * searchLabel;
    NSMutableArray * manualGitHubFriendInfo;
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        
        /*
         
         @"" -> String
         @[] -> Array
         @{} -> Dictionary
         
         @[@1, @2, @3 ]    OR @[@"Heidi", @"Merritt"]
         
         
         //Dictionaries have keys that point to values
         @{ @"name" :   @"Merritt", @"age" : @28}
         
         */
        
        manualGitHubFriendInfo = [@[]mutableCopy];
        
        NSArray * loadedUsers = [GRAGithubRequest loadUsers];
        if (loadedUsers)
        
        {
            manualGitHubFriendInfo = [loadedUsers mutableCopy];
        }
    
            //this is the code to allow formating
        self.tableView.rowHeight = 90;
        self.tableView.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    }
    
    return self;
    
    
}


- (void)viewDidLoad




{
    
    
   UIView * headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    
    
self.tableView.tableHeaderView = headerView;
    
    headerView.backgroundColor = [UIColor colorWithRed:0.965f green:0.125f blue:0.341f alpha:1.0f];
    
    headerView.layer.masksToBounds = NO;
    
    headerView.clipsToBounds = YES;
    
    
    UIButton * searchButton=[[UIButton  alloc] initWithFrame:CGRectMake(273, 13, 35, 35)];
    
    searchButton.layer.cornerRadius = 35/2;
    
    searchButton.backgroundColor = [UIColor whiteColor];
   
    
    
    
    
    UIImage * buttonImage = [UIImage imageNamed:@"searchButton.png"];
    
    
    
    [searchButton setImage: buttonImage forState:UIControlStateNormal] ;
    
    
    searchLabel = [[UITextField alloc]initWithFrame:CGRectMake(8, 13, 258, 35)];
    
    searchLabel.layer.cornerRadius = 8;
    
    searchLabel.backgroundColor = [UIColor whiteColor];
    
    searchLabel.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    searchLabel.autocorrectionType = UITextAutocorrectionTypeNo;
    
    UIView * paddingView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    searchLabel.leftView = paddingView;
    
    searchLabel.leftViewMode = UITextFieldViewModeAlways;
    
    [headerView addSubview: searchLabel];
    
    
    // this creates action on the button and then you have to create a method below//
    
    [searchButton addTarget:self action:@selector(addUser)forControlEvents:UIControlEventTouchUpInside];

    [headerView addSubview:searchButton];
    CGRect sepFrame = CGRectMake(0, headerView.frame.size.height-1, 320, 1);
    UIView * seperatorView = [[UIView alloc] initWithFrame:sepFrame];
    seperatorView.backgroundColor = [UIColor colorWithWhite:224.0/255.0 alpha:1.0];
    [headerView addSubview:seperatorView];
    
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
  // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)addUser
{
    
    NSDictionary * userInfo = [GRAGithubRequest requestUserInfo:(NSString*) searchLabel.text];
    
    NSLog(@"search button was clicked");

        // add new users to the top of the list//
    
    [manualGitHubFriendInfo insertObject:userInfo atIndex:0];
    
    [self.tableView reloadData];
    
    [GRAGithubRequest saveUsers:manualGitHubFriendInfo];
   
    [searchLabel resignFirstResponder];
}

#pragma mark - Table view data source

//(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;


// TIY a method that changes the height of each cell.

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    return 90;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return manualGitHubFriendInfo.count;
}

// TIY we do this when we need to "cache an item so that it can be essentially "resued"

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GFATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil)
    {
        cell = [[GFATableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    cell.friendInfo = manualGitHubFriendInfo[indexPath.row];
    
    cell.navigationController= self.navigationController;
   
    
    // Configure the cell...
    
    
    
    return cell;
}
// TIY this is selecting each cell and when selected

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Select row at %@",indexPath);
    
    GFAViewController * profileView = [[GFAViewController alloc]init];
    
    //    TIY this is important to know to do if you are adding pushviewcolor
    
    
    //  TIY this is how you push a view into the next controller
    
    
    profileView.view.backgroundColor = [ UIColor lightGrayColor];
    
    profileView.friendInfo = manualGitHubFriendInfo[indexPath.row];
    
    
    [self.navigationController pushViewController: profileView animated: YES];
    
    
    
}



 // Override to support conditional editing of the table view
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }



 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete)
 
 {  [manualGitHubFriendInfo removeObjectAtIndex:indexPath.row];
    
     [GRAGithubRequest saveUsers:manualGitHubFriendInfo];
     
     
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
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
