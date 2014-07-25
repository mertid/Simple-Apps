//
//  GFAViewController.m
//  Github Friendsa
//
//  Created by Merritt Tidwell on 7/25/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import "GFAViewController.h"

@interface GFAViewController ()

@end

@implementation GFAViewController
{
    UIWebView * webView;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    
    // how to link a url//
    
    webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:webView];
    

////    UIWebView * webView = [[UIWebView alloc] initWithFrame:self.view.frame];
//    
//    [self.view addSubview:webView];
//    
//    NSURL * url = [NSURL URLWithString:(@"http://www.google.com")];
//    
//    NSURLRequest * request = [NSURLRequest requestWithURL:(url)];
//    
//    [webView loadRequest:(request)];
//    
}

-(void)setFriendInfo:(NSDictionary *)friendInfo
{
    _friendInfo = friendInfo;
    
//purpose of a setter is there to be listening for very instant when property gets set//
    
    NSURL * url = [NSURL URLWithString:friendInfo[@"html_url"]];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    NSLog(@"%@",webView);
    
    [webView loadRequest:request];

    
    

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
