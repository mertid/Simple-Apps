//
//  GRAGithubRequest.m
//  Github Request
//
//  Created by Merritt Tidwell on 7/28/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import "GRAGithubRequest.h"

@implementation GRAGithubRequest

+ (NSDictionary *)requestUserInfo:(NSString*)username
{
// take username and call the github url
    
    NSString * urlString = [NSString stringWithFormat:@"https://api.github.com/users/%@?access_token=6e77c22eec22b31f923a63d22fe8ab6cb930a93e",username];

    NSURL * url = [NSURL URLWithString:urlString];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    
    //////// mutable request
    NSMutableURLRequest * mutableRequest = [NSMutableURLRequest requestWithURL:url];
    
    [mutableRequest setHTTPMethod:@"POST"];
    
    ////
    
    NSError * error = nil;
    NSURLResponse * response = nil;
    
    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSDictionary * userInfo = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&error];
    
    NSLog(@"user info = %@",userInfo);
    return userInfo;
}

+(void)saveUsers:(NSArray *)users
{
    // path to what we are saving
    NSString * path =[GRAGithubRequest usersArchivePath];

    // then we archive
    NSData * userData =[NSKeyedArchiver archivedDataWithRootObject:users];

    // then we save file
    [userData writeToFile:path options: NSDataWritingAtomic error:nil];
}

+(NSArray *)loadUsers
{   //path to what we are loading
    NSString * path =[GRAGithubRequest usersArchivePath];

    //then we unarchive
    NSArray * users =[ NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    //then we return the array
    return users;
}

+(NSString *) usersArchivePath
{
    //return array of dictionaries
    NSArray * documentDirectories = NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES);
   
    //grab first path from above array
    
    NSString * documenntDirectory = documentDirectories[0];

    // return path/users.data
    return [documenntDirectory stringByAppendingPathComponent:@"users.data"];
}

@end
