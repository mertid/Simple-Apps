//
//  GFATableViewCell.m
//  Github Friendsa
//
//  Created by SYBIL TRUTH on 7/24/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import "GFATableViewCell.h"
#import "GFAViewController.h"
@implementation GFATableViewCell

{
    UILabel * friendName;
    UILabel * friendLocation;
    UILabel * friendFollowers;
    UILabel * friendFollowing;
    UIButton * profileButton;
    UIImageView * friendImage;
    UIButton * gistButton;
    UILabel * gistLabel;
    UIImageView * arrowLabel;
    UILabel * leaderLabel;
    UIImageView * upArrow;
    UIImage *  searchButton;
    UIImageView * downArrow;
    UILabel * tagLabel;
    NSString * gistNumber;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // TIY Creating a circle with an image.
        
        
        //set friend name//
        
        
        friendName = [[UILabel alloc]initWithFrame:CGRectMake(95, 2, 200, 40)];
        friendName.textColor = [UIColor grayColor];
        
        friendName.font = [UIFont fontWithName:@ "HelveticaNeue-UltraLight" size:22];
        
        [self.contentView addSubview:friendName];
        
        
        // Friend Location//
        
        friendLocation = [[UILabel alloc]initWithFrame:CGRectMake(95, 20, 200, 40)];
        friendLocation.textColor = [UIColor grayColor];
        
        friendLocation.font = [UIFont fontWithName:@ "HelveticaNeue-Light" size:12];
        
        [self.contentView addSubview:friendLocation];
        
        friendImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 90, 90)];
        //friendImage.layer.cornerRadius = 20;
        //friendImage.layer.masksToBounds = YES;
        
        friendImage.backgroundColor = [UIColor lightGrayColor];
        [self.contentView addSubview:friendImage];
        
        
        // Arrow Label//
        
        arrowLabel = [[UIImageView alloc]initWithFrame:CGRectMake(100, 60, 22, 22)];
        
        arrowLabel.layer.cornerRadius = 22/2;
        arrowLabel.layer.borderWidth = 1;
        [self.contentView addSubview:arrowLabel];
        
        
        // Tag LABEL, leaders, followers, ///
        
        tagLabel = [[UILabel alloc]initWithFrame:CGRectMake(145, 45, 75, 55)];
        
        tagLabel.font = [UIFont fontWithName:(@"HelveticaNeue-Light") size:12];
        [self.contentView addSubview: tagLabel];
        
        
        // Leader label....the label that will have numbers in it//
        
        leaderLabel =[[UILabel alloc]initWithFrame:CGRectMake(118, 60, 22, 22)];
        
        leaderLabel.layer.cornerRadius = 22/2;
        leaderLabel.layer.masksToBounds = YES;
        leaderLabel.layer.borderWidth = 1;
        [self.contentView addSubview:leaderLabel];
        
        
        
        // Friend Followers//
        
        friendFollowers = [[UILabel alloc]initWithFrame:CGRectMake(20, 65, 200, 40)];
        friendFollowers.textColor = [UIColor grayColor];
        
        
        // FRIEND FOLLOWING//
        
        friendFollowing = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 200, 40)];
        friendFollowing.textColor = [UIColor grayColor];
        
        NSString * followingString = [NSString stringWithFormat:@"Following : %@",_friendInfo [@"following"]];  friendFollowing.text = followingString;
        
        
        
        // Profile Button with Image//
        
        profileButton = [[UIButton alloc]initWithFrame:CGRectMake(285, 10, 25, 25)];
        
        profileButton.layer.cornerRadius= 25/2;
        
        profileButton.backgroundColor = [UIColor colorWithRed:0.227f green:0.227f blue:0.227f alpha:1.0f];

        
        UIImage * buttonImage = [UIImage imageNamed:@"profileArrow.png"];
        
        
        [profileButton addTarget:self action:@selector(profileButtonClicked)forControlEvents:UIControlEventTouchUpInside];
        
        
        [profileButton setImage:buttonImage forState:UIControlStateNormal];
        
        [self.contentView addSubview: profileButton];
        
        
        
        // Gists Button//
        
        gistButton = [[UIButton alloc]initWithFrame:CGRectMake(255, 58, 60, 25)];
        
        gistButton.layer.cornerRadius= 13;
        
        gistButton.layer.borderWidth= .7;
        
        gistButton.layer.borderColor= [UIColor  whiteColor].CGColor;
        
        [gistButton setTitle:@"GISTS" forState:UIControlStateNormal];
        
        [self.contentView addSubview: gistButton];
        
        gistButton.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:12];
    
        [gistButton addTarget:self action:@selector(gistButtonClicked) forControlEvents:UIControlEventTouchUpInside];
        
        
        // Gist Label//
        
        gistLabel = [[UILabel alloc]initWithFrame:CGRectMake(235, 58, 25, 25)];
        gistLabel.layer.cornerRadius = 22/2;
        gistLabel.layer.masksToBounds =YES;
        gistLabel.layer.borderWidth = 1.0;
        gistLabel.layer.borderColor= [UIColor whiteColor].CGColor;
        gistLabel.text = @"@public_gists";
        gistLabel.textColor =[UIColor grayColor];
        gistLabel.textAlignment = NSTextAlignmentCenter;
        gistLabel.backgroundColor = [UIColor whiteColor];
        
        
        
        [self.contentView addSubview: gistLabel];
        
        
        
        // background color//
        
        self.backgroundColor = [UIColor colorWithRed:0.227f green:0.227f blue:0.227f alpha:1.0f];
        
        
    }
    return self;
}


//    @"login": @"mertid",
//    @"avatar_url": @"https://avatars.githubusercontent.com/u/7989843?",
//    @"name": @"Merritt Tidwell",
//    @"blog": @"merritt.com",
//    @"location": @"Atlanta, GA",
//    @"email": @"Merritt.tidwell@gmail.com",

// creating button functionality//

- (void)profileButtonClicked
{
    NSLog(@"Button was clicked");
    
    GFAViewController * profileView = [[GFAViewController alloc]init];
    
    profileView.view.backgroundColor = [ UIColor colorWithRed:0.227f green:0.227f blue:0.227f alpha:1.0f];

    
    profileView.friendInfo = self.friendInfo;
    
    [self.navigationController pushViewController: profileView animated: YES];
    
}

-(void)gistButtonClicked
{
    GFAViewController * profileView =[[GFAViewController alloc]init];
    profileView.view.backgroundColor =[UIColor lightGrayColor];
    NSString * gistURL = [NSString stringWithFormat:@"https://gist.github.com/%@",self.friendInfo[@"login"]];
    profileView.friendInfo = @{@"html_url":gistURL};
    
    [self.navigationController pushViewController:profileView animated:YES];
    
}
- (void)setFriendInfo:(NSDictionary *)friendInfo
{
    _friendInfo = friendInfo;
    
    NSURL * url = [NSURL URLWithString: friendInfo[@"avatar_url"]];
    
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    UIImage * image = [ UIImage imageWithData:data];
    
    friendImage.image = image;
    
//    friendFollowers.text = friendInfo[@"followers"];
    
//    friendFollowing.text = friendInfo[@"following"];
    
    friendLocation.text = friendInfo[@"location"];
    
    friendName.text = friendInfo[@"name"];
    
   // gistNumber = friendInfo[@"public_gists"];
    
    NSString * gistNumber = [NSString stringWithFormat:@"%@", friendInfo[@"public_gists"]];
    
    gistLabel.text = gistNumber;
    
    
    
    // this string of code is getting a terms follwers and folling in front of the numbers"//
    
    //  NSString * followingString = [NSString stringWithFormat:@"Following : %@", friendInfo[@"following"]];
    // friendFollowing.text = followingString;
    
    //  NSString * followerString = [NSString stringWithFormat:@"Followers : %@", friendInfo[@"followers"]];
    //friendFollowers.text = followerString;

    
    NSLog(@"%@", friendInfo);
    
    // TIY this is the setter method being called on a property, friendInfo is a property on the GFATableViewCell
    
    
    
    // if else statements for followers/ following buttons///
    
    
    friendFollowers.text = [NSString stringWithFormat:@"Followers : %d", [friendInfo[@"followers"] intValue]];
    friendFollowing.text = [NSString stringWithFormat:@"%d", [friendInfo[@"followers"] intValue]];
    
    
    


    if (friendInfo[@"following"] < friendInfo[@"followers"])
    {
        tagLabel.textColor = [UIColor colorWithRed:0.200f green:0.973f blue:0.749f alpha:1.0f];
        tagLabel.text = @"Leader";
        upArrow = [[UIImageView alloc]initWithFrame:CGRectMake(100, 60, 22, 22)];
        upArrow.layer.cornerRadius = 22/2;
        upArrow.layer.masksToBounds = YES;
        upArrow.image= [UIImage imageNamed:@"upArrow.png"];
        
        [self.contentView addSubview:upArrow];
        
        [self.contentView bringSubviewToFront:upArrow];
        
        leaderLabel.layer.borderColor = [UIColor colorWithRed:0.200f green:0.973f blue:0.749f alpha:1.0f].CGColor;
        
        
        
    }
    
    else if (friendInfo[@"following"] > friendInfo[@"followers"])
    {
        arrowLabel.layer.borderColor =  [UIColor colorWithRed:0.965f green:0.125f blue:0.341f alpha:1.0f].CGColor;
        tagLabel.textColor = [UIColor colorWithRed:0.965f green:0.125f blue:0.341f alpha:1.0f];
        tagLabel.text = @"Follower";
        leaderLabel.layer.borderColor= [UIColor colorWithRed:0.965f green:0.125f blue:0.341f alpha:1.0f].CGColor;
        downArrow = [[UIImageView alloc] initWithFrame:CGRectMake(100, 60, 22, 22)];
        downArrow.layer.cornerRadius = 22/2;
        downArrow.layer.masksToBounds = YES;
        downArrow.image = [UIImage imageNamed:@"downArrow"];
        
        [self.contentView addSubview:downArrow];
        
        [self.contentView bringSubviewToFront:downArrow];
        
    }
    
    
    else  {
        
        arrowLabel.backgroundColor =[UIColor colorWithRed:0.227f green:0.227f blue:0.227f alpha:1.0f];
        arrowLabel.layer.borderColor =  [UIColor lightGrayColor].CGColor;
        arrowLabel.backgroundColor = [UIColor lightGrayColor];
        tagLabel.textColor = [UIColor grayColor];
        
        tagLabel.text = @"Just Friends";
        leaderLabel.backgroundColor = [UIColor colorWithRed:0.227f green:0.227f blue:0.227f alpha:1.0f];
        leaderLabel.layer.borderColor =[UIColor grayColor].CGColor;
    
        
        }
        
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

    @end;
