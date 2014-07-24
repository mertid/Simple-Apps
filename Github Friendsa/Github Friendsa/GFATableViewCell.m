//
//  GFATableViewCell.m
//  Github Friendsa
//
//  Created by SYBIL TRUTH on 7/24/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import "GFATableViewCell.h"

@implementation GFATableViewCell

{
    UILabel * friendName;
    UILabel * friendLocation;
    UILabel * friendFollowers;
    UILabel * friendFollowing;
    UIButton * profileButton;
    UIImageView * friendImage;
    UIButton * gistButton;

    
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // TIY Creating a circle with an image.
        
        // friend name//
        
        
        friendName = [[UILabel alloc]initWithFrame:CGRectMake(60, 10, 200, 40)];
        friendName.textColor = [UIColor grayColor];
        
        friendName.font = [UIFont fontWithName:@ "HelveticaNeue-UltraLight" size:30];
        
        [self.contentView addSubview:friendName];
        
        
        // Friend Lcation//
        
        friendLocation = [[UILabel alloc]initWithFrame:CGRectMake(60, 35, 200, 40)];
        friendLocation.textColor = [UIColor grayColor];
        
        friendLocation.font = [UIFont fontWithName:@ "HelveticaNeue-Light" size:16];
        
        [self.contentView addSubview:friendLocation];
        
        
        friendImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
        friendImage.layer.cornerRadius = 20;
        friendImage.layer.masksToBounds = YES;
        friendImage.backgroundColor = [UIColor lightGrayColor];
        [self.contentView addSubview:friendImage];
        
        
        // Friend Followers//
        
        
        friendFollowers = [[UILabel alloc]initWithFrame:CGRectMake(20, 65, 200, 40)];
        friendFollowers.textColor = [UIColor grayColor];
        
        
        
        [self.contentView addSubview:friendFollowers];
       
        
        // FRIEND FOLLOWING//
        
        friendFollowing = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 200, 40)];
        friendFollowing.textColor = [UIColor grayColor];
        
        NSString * followingString = [NSString stringWithFormat:@"Following : %@",_friendInfo [@"following"]];
        friendFollowing.text = followingString;
        
        // Profile Button//
        
        profileButton = [[UIButton alloc]initWithFrame:CGRectMake(205, 50, 100, 28)];
        
        profileButton.layer.cornerRadius= 12.5;
        
        profileButton.backgroundColor = [UIColor lightGrayColor];
        
        [profileButton setTitle:@"PROFILE" forState:UIControlStateNormal];
        
        
        [self.contentView addSubview: profileButton];
        
        // Gists Button//
        
        gistButton = [[UIButton alloc]initWithFrame:CGRectMake(205, 80, 100, 28)];
        
        gistButton.layer.cornerRadius= 12.5;
        
        gistButton.backgroundColor = [UIColor lightGrayColor];
        
        
        [gistButton setTitle:@"GISTS" forState:UIControlStateNormal];
        
        [self.contentView addSubview: gistButton];

        

        [self.contentView addSubview:friendFollowing];
        
        
        
        
    }
    return self;
}
    
    
//    @"login": @"mertid",
//    @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
//    @"name": @"Merritt Tidwell",
//    @"blog": @"merritt.com",
//    @"location": @"Atlanta, GA",
//    @"email": @"Merritt.tidwell@gmail.com",

- (void)setFriendInfo:(NSDictionary *)friendInfo
{
    _friendInfo = friendInfo;
    
    
    

    NSURL * url = [NSURL URLWithString: friendInfo[@"avatar_url"]];
    
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    UIImage * image = [ UIImage imageWithData:data];
    
    friendImage.image = image;
    
    
    friendFollowers.text = friendInfo[@"followers"];
    
    
    friendFollowing.text = friendInfo[@"following"];
    
    friendLocation.text = friendInfo[@"location"];

    friendName.text = friendInfo[@"name"];

   
    // this string of code is getting a terms follwers and folling in front of the numbers"//
    
    NSString * followingString = [NSString stringWithFormat:@"Following : %@", friendInfo[@"following"]];
    friendFollowing.text = followingString;
    
    NSString * followerString = [NSString stringWithFormat:@"Followers : %@", friendInfo[@"followers"]];
    friendFollowers.text = followerString;
    
    
    
    NSLog(@"%@", friendInfo);

   // TIY this is the setter method being called on a property, friendInfo is a property on the GFATableViewCell
    
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
