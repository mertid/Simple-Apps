//
//  FHAViewController.m
//  First Homework App
//
//  Created by SYBIL TRUTH on 7/21/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.
//

#import "FHAViewController.h"

@interface FHAViewController ()

@end

@implementation FHAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)LoginButtonWasClicked:(id)sender {

    NSString  * username = self.UsernameTextField.text;
    NSLog(@"username = %@", username);
   
    NSString * password = self.passwordTextField.text;

    NSLog(@"username is %@ and password is %@", username, password);

    if ([self.UsernameTextField.text isEqualToString:@""] && [self.passwordTextField.text
         isEqualToString:@""])
    {
        self.errorText.text = @"Both Feilds are Empty";
        
    }

    else if ([self.UsernameTextField.text isEqualToString:@""])
    {
        self.errorText.text = @"Username is empty";
        
        
    }

    else if ([self.passwordTextField.text isEqualToString:@""])
    {
        self.errorText.text = @"Password is empty";
    }
}


- (IBAction)resetButtonWasClicked:(id)sender {

    NSLog(@"reset");
    self.UsernameTextField.text = @"";
    self.passwordTextField.text = @"";
    
}

- (IBAction)greenButtonWasClicked:(id)sender {
  
    self.view.backgroundColor = [UIColor greenColor];
 
}

- (IBAction)redButtonWasClicked:(id)sender {
    
    self.view.backgroundColor = [UIColor redColor];

}

- (IBAction)yellowButtonWasClicked:(id)sender {
    
    self.view.backgroundColor = [UIColor yellowColor];
}
    @end;
