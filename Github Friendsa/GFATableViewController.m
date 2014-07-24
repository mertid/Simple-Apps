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

@interface GFATableViewController ()

@end

@implementation GFATableViewController

{
    UITextField * searchLabel;

}


    NSMutableArray * githubFriends;
    


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        githubFriends =         [@[
      
                                       @{
                                   
                                        @"login": @"mertid",
                                        @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                        @"name": @"Merritt Tidwell",
                                        @"following": @"0",
                                        @"location": @"Atlanta, GA",
                                        @"followers": @"0",
                                        },
                                       
                                      @{
                                       
                                       @"login": @"ssniteman",
                                       @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                       @"name": @"Merritt Tidwell",
                                       @"blog": @"merritt.com",
                                       @"location": @"Dallas,TX",
                                       @"email": @"Merritt.tidwell@gmail.com",
                                       },
                                       
                                     
                                       @{
                                           @"login": @"npeterson213",
                                           @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                           @"name": @"Merritt Tidwell",
                                           @"blog": @"merritt.com",
                                           @"location": @"Atlanta, GA",
                                           @"email": @"Merritt.tidwell@gmail.com",

                                           },
                                      @{
                                           
                                        @"login": @"schwaebek",
                                        @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                        @"name": @"Merritt Tidwell",
                                        @"blog": @"merritt.com",
                                        @"location": @"Atlanta, GA",
                                        @"email": @"Merritt.tidwell@gmail.com",
                                          
                                          },
                                       
                                       @{ @"login": @"anterio",
                                          @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                          @"name": @"Merritt Tidwell",
                                          @"blog": @"merritt.com",
                                          @"location": @"Atlanta, GA",
                                          @"email": @"Merritt.tidwell@gmail.com",
                                          },
                                       
                                       @{
                                      
                                           @"login": @"josephlausf",
                                           @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                           @"name": @"Merritt Tidwell",
                                           @"blog": @"merritt.com",
                                           @"location": @"Atlanta, GA",
                                           @"email": @"Merritt.tidwell@gmail.com",
                                       },

                                       @{
                                         @"login": @"Kalson",
                                          @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                          @"name": @"Merritt Tidwell",
                                          @"blog": @"merritt.com",
                                          @"location": @"Atlanta, GA",
                                          @"email": @"Merritt.tidwell@gmail.com",
                                       },
                                      
                                      @{
                                        @"login": @"Jeremycbutler",
                                        @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                        @"name": @"Merritt Tidwell",
                                        @"blog": @"merritt.com",
                                        @"location": @"Atlanta, GA",
                                        @"email": @"Merritt.tidwell@gmail.com",
                                        },
                                
                                       
                                       @{
                                           
                                        @"login": @"renecandelier",
                                        @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                        @"name": @"Merritt Tidwell",
                                        @"blog": @"merritt.com",
                                        @"location": @"Atlanta, GA",
                                        @"email": @"Merritt.tidwell@gmail.com",

                                        },
                                      @{
                                       @"login": @"ericstephen",
                                       @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                       @"name": @"Merritt Tidwell",
                                       @"blog": @"merritt.com",
                                       @"location": @"Atlanta, GA",
                                       @"email": @"Merritt.tidwell@gmail.com",
                                       },
                                       
                                      @{
                                           @"login": @"schwaebek",
                                           @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                           @"name": @"Merritt Tidwell",
                                           @"blog": @"merritt.com",
                                           @"location": @"Atlanta, GA",
                                           @"email": @"Merritt.tidwell@gmail.com",
                                           },
                                       
                                        @{
                                          @"login": @"EWJSeidel",
                                          @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                          @"name": @"Merritt Tidwell",
                                          @"blog": @"merritt.com",
                                          @"location": @"Atlanta, GA",
                                          @"email": @"Merritt.tidwell@gmail.com",

                                           },
                                    
                                       @{
                                       @"login": @"jhend11",
                                       @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                       @"name": @"Merritt Tidwell",
                                       @"blog": @"merritt.com",
                                       @"location": @"Atlanta, GA",
                                       @"email": @"Merritt.tidwell@gmail.com",

                                       },
                                       @{
                                          @"login": @"ssneller",
                                          @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                          @"name": @"Merritt Tidwell",
                                          @"blog": @"merritt.com",
                                          @"location": @"Atlanta, GA",
                                          @"email": @"Merritt.tidwell@gmail.com",

                                          },
                                         @{
                                           
                                           @"login": @"dmerrill88",
                                          @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                          @"name": @"Merritt Tidwell",
                                          @"blog": @"merritt.com",
                                          @"location": @"Atlanta, GA",
                                          @"email": @"Merritt.tidwell@gmail.com",
                                           },

                                            @{
                                             @"login": @"jaimeconnor",
                                             @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
                                             @"name": @"Merritt Tidwell",
                                             @"blog": @"merritt.com",
                                             @"location": @"Atlanta, GA",
                                             @"email": @"Merritt.tidwell@gmail.com",

                                           },
                                       
            ]mutableCopy];
    
    }
    
    return self;


}


- (void)viewDidLoad
{
    UIView * headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];

    
    self.tableView.tableHeaderView = headerView;
    
    UIButton * searchButton=[[UIButton  alloc] initWithFrame:CGRectMake(270, 30, 40, 40)];
    
    searchButton.layer.cornerRadius = 20;
    
    searchButton.backgroundColor = [UIColor lightGrayColor];
    
    [searchButton setTitle:@"" forState:UIControlStateNormal] ;
    
    searchLabel = [[UITextField alloc]initWithFrame:CGRectMake(15, 30, 245, 45)];
    
    [self.view addSubview: searchLabel];
    
    searchLabel.borderStyle = UITextBorderStyleLine;

    
    
 //   [searchButton addTarget:self action:@selector(searchButtonClicked)forControlEvents:UIControlEventTouchUpInside];
    
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

    return 115;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return githubFriends.count;
}

// TIY we do this when we need to "cache an item so that it can be essentially "resued"

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    GFATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil)
    {
        cell = [[GFATableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    cell.friendInfo = githubFriends[indexPath.row];
    
    
    // Configure the cell...
    
    
    
    
    return cell;
}

/*
 // Override to support conditional editing of the table view
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
