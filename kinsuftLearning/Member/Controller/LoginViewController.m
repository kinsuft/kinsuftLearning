//
//  LoginViewController.m
//  kinsuftLearning
//
//  Created by administrator on 5/13/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import "LoginViewController.h"
#import "KinsuftCommon.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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
    // Do any additional setup after loading the view.
    
    UIImage* loginViewBackGroundImage;
    if (iPhone5) {
        loginViewBackGroundImage = [UIImage imageNamed:@"background-568"];
    }else{
        loginViewBackGroundImage = [UIImage imageNamed:@"background"];
    }
    
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:loginViewBackGroundImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)close:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
