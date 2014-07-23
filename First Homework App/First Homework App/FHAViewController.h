//
//  FHAViewController.h
//  First Homework App
//
//  Created by SYBIL TRUTH on 7/21/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FHAViewController : UIViewController

// 2 text fields (username, password)

// 3 labels (username = username.text, password = password.text, error = error message based on 3 different conditionals)

// 2 buttons (login, reset ( turns alll the fields back to empty and resets the labels)

// 3 buttons have no text no labels  when you tap them change the view to background color to match the button. Hint ui color

@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;


@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;


- (IBAction)LoginButtonWasClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *errorText;


- (IBAction)resetButtonWasClicked:(id)sender;

- (IBAction)greenButtonWasClicked:(id)sender;

- (IBAction)redButtonWasClicked:(id)sender;

- (IBAction)yellowButtonWasClicked:(id)sender;

@end
