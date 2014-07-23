//
//  TDAViewController.h
//  ToDo
//
//  Created by SYBIL TRUTH on 7/10/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDAViewController : UIViewController

@property (nonatomic) NSMutableArray * listItems;

@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)tapButton:(id)sender;


@end
