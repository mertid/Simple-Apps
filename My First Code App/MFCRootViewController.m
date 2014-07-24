//
//  MFCRootViewController.m
//  My First Code App
//
//  Created by SYBIL TRUTH on 7/22/14.
//  Copyright (c) 2014 Merritt Tidwell. All rights reserved.

#import "MFCRootViewController.h"

@interface MFCRootViewController () <UITextFieldDelegate>

// TIY declare private properties and methods


//@property (nonatomic) UILabel * someLabel;


@end

@implementation MFCRootViewController

{
    UILabel * someLabel;
    UITextField * passwordField;
    UITextField * emailField;
    UITextField * phoneView;
    UITextField * usernameField;
    
}

+ (void)classMethod
{
    
}

-(BOOL)cleanToilet: (NSString *)tool
{
    
    // clean toilet
    
    // if toilet is clean
    
    return YES;
    
    // if toilet is not clean
    return NO;
    
}
-(void)doSomething
{
    [self cleanToilet:@"plunder"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"init");
        
        self.view.backgroundColor = [UIColor colorWithRed:0.086f green:0.549f blue:0.729f alpha:1.0f];    }
    return self;
}

- (void)viewDidLoad

{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // TIY add subview here
    
    
    int screenHeight = [UIScreen mainScreen].bounds.size.height;
    
    int screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    
    
    
    UIButton * loginButton = [[UIButton alloc]initWithFrame:CGRectMake(10, screenHeight - 60.0, screenWidth-20.0, 50.0)];
    
    loginButton.layer.cornerRadius= 10;
    
    loginButton.backgroundColor = [UIColor colorWithRed:0.482f green:0.886f blue:0.992f alpha:1.0f];
    
    UIButton * ResetButton = [[UIButton alloc]initWithFrame:CGRectMake(10, screenHeight - 120.0, screenWidth-20.0, 50.0)];
    
    ResetButton.backgroundColor = [UIColor blackColor];
    
    ResetButton.layer.cornerRadius = 10;
    

    
    [self.view addSubview:loginButton];
    
    [self.view addSubview:ResetButton];
    
    usernameField = [[UITextField alloc] initWithFrame:
                                   CGRectMake (10, 30, screenWidth-20.0, 50)];

   
    [self.view addSubview:usernameField];
    
    passwordField = [[UITextField alloc] initWithFrame:
                                   CGRectMake (10, 85,screenWidth- 20.0, 50)];
    [self.view addSubview:passwordField];
    
    passwordField.backgroundColor = [UIColor whiteColor];
    
    passwordField.layer.cornerRadius= 10;
    
    
    passwordField.placeholder = @"password";
    
    emailField = [[UITextField alloc] initWithFrame:
                                   CGRectMake (10, 140,screenWidth- 20.0, 50)];
    [self.view addSubview:emailField];
    
   phoneView = [[UITextField alloc] initWithFrame:
                                CGRectMake (10, 195,screenWidth- 20.0, 50)];
    [self.view addSubview:phoneView];

    phoneView.backgroundColor = [UIColor whiteColor];
    
    phoneView.placeholder = @"phone";
    
    UIView * paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    phoneView.leftView = paddingView;
    
    phoneView.leftViewMode = UITextFieldViewModeAlways;
    
    phoneView.layer.cornerRadius = 10;
    
    phoneView.keyboardType= UIKeyboardTypePhonePad;
    
    phoneView.textColor = [UIColor colorWithRed:0.086f green:0.549f blue:0.729f alpha:1.0f];
    
    emailField.backgroundColor = [UIColor whiteColor];
    emailField.placeholder = @"email";
    
    paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    emailField.leftView = paddingView;
    
    emailField.leftViewMode = UITextFieldViewModeAlways;
    
    emailField.keyboardType = UIKeyboardTypeEmailAddress;
    emailField.layer.cornerRadius = 10;
    
    emailField.textColor = [UIColor colorWithRed:0.086f green:0.549f blue:0.729f alpha:1.0f];
    
   
    
    
    passwordField.secureTextEntry = YES;
    
    passwordField.textColor = [UIColor colorWithRed:0.086f green:0.549f blue:0.729f alpha:1.0f];
    
    passwordField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    passwordField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    
    
    paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    passwordField.leftView = paddingView;
    
    passwordField.leftViewMode = UITextFieldViewModeAlways;
    
    usernameField.backgroundColor = [UIColor whiteColor];
    
    usernameField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    usernameField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    usernameField.textColor = [UIColor colorWithRed:0.086f green:0.549f blue:0.729f alpha:1.0f];
    
    paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    
    usernameField.leftView = paddingView;
    
    usernameField.leftViewMode = UITextFieldViewModeAlways;

    
    usernameField.placeholder = @"username";
    
    usernameField.layer.cornerRadius = 10;
    usernameField.delegate = self;
    passwordField.delegate = self;
    emailField.delegate = self;
    phoneView.delegate = self;
    
    
  //  loginButton.backgroundColor = [UIColor blueColor];
    
    [loginButton setTitle:@"Login" forState:UIControlStateNormal] ;
    
    [loginButton addTarget:self action:@selector(loginButtonClicked)forControlEvents:UIControlEventTouchUpInside];
    
//    ResetButton.backgroundColor = [UIColor blueColor];
    
    [ResetButton setTitle:@"Reset" forState:UIControlStateNormal] ;
    
    [ResetButton addTarget:self action:@selector(ResetButtonClicked)forControlEvents:UIControlEventTouchUpInside];
    
  
// Green Button
    
    UIButton * greenButton = [[UIButton alloc] initWithFrame:CGRectMake(25, 280, 50, 50)];
    
    greenButton.backgroundColor = [UIColor greenColor];
    
    greenButton.layer.cornerRadius = 25;
    
    [self.view addSubview:greenButton];
    
    [greenButton addTarget:self action:@selector(greenButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    NSLog(@"view did load");
    
    
//  Red button
    UIButton * redButton = [[UIButton alloc] initWithFrame:CGRectMake(80, 280, 50, 50)];
    
    redButton.backgroundColor = [UIColor redColor];
    
    redButton.layer.cornerRadius = 25;
    
    [self.view addSubview:redButton];
    
    [redButton addTarget:self action:@selector(redButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
   // yellow button
    
    UIButton * yellowButton = [[UIButton alloc] initWithFrame:CGRectMake(135, 280, 50, 50)];
    
    yellowButton.backgroundColor = [UIColor yellowColor];
    
    yellowButton.layer.cornerRadius = 25;
    
    [self.view addSubview:yellowButton];
    
    [yellowButton addTarget:self action:@selector(yellowButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
  // orange button
    
    UIButton * orangeButton = [[UIButton alloc] initWithFrame:CGRectMake(190, 280, 50, 50)];
    
    orangeButton.backgroundColor = [UIColor orangeColor];
    
    orangeButton.layer.cornerRadius = 25;
    
    [self.view addSubview:orangeButton];
    
    [orangeButton addTarget:self action:@selector(orangeButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
  // purple button
    
    UIButton * purpleButton = [[UIButton alloc] initWithFrame:CGRectMake(245, 280, 50, 50)];
    
    purpleButton.backgroundColor = [UIColor colorWithRed:0.439f green:0.176f blue:0.961f alpha:1.0f];
    
    purpleButton.layer.cornerRadius = 25;
    
    [self.view addSubview:purpleButton];
    
    [purpleButton addTarget:self action:@selector(purpleButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    NSLog(@"view did load");


    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"textfieldshouldreturn is being called");
    [textField resignFirstResponder];
    
// TIY we write this for each text field in order to return the keyboard.
    return YES;

}
- (void)ResetButtonClicked
{
    NSLog(@"Button Was Clicked");
    
    usernameField.text = @"";
    passwordField.text = @"";
    emailField.text= @"";
    phoneView.text= @"";
    
    self.view.backgroundColor = [UIColor colorWithRed:0.086f green:0.549f blue:0.729f alpha:1.0f];
}


- (void)loginButtonClicked
{
    NSLog(@"Button Was Clicked");
    
    
}
-(void)greenButtonClicked
{
    NSLog(@"Button Was Clicked");
    
    self.view.backgroundColor = [UIColor greenColor];
}
-(void)redButtonClicked
{
    self.view.backgroundColor = [UIColor redColor];

    NSLog(@"Button Was Clicked");
}
-(void)yellowButtonClicked
{
    self.view.backgroundColor = [UIColor yellowColor];

    NSLog(@"Button Was Clicked");
}
-(void)orangeButtonClicked
{ self.view.backgroundColor = [UIColor orangeColor];

    NSLog(@"Button Was Clicked");
}
-(void)purpleButtonClicked
{ self.view.backgroundColor = [UIColor purpleColor];

    NSLog(@"Button Was Clicked");
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
