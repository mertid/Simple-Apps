//
//  GRAGithubRequest.h
//  Github Request
//
//  Created by Merritt Tidwell on 7/28/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GRAGithubRequest.h"

@interface GRAGithubRequest : NSObject

+ (NSDictionary *)requestUserInfo:(NSString*)username;
+(void)saveUsers:(NSArray *)users;
+(NSArray *)loadUsers;

@end
