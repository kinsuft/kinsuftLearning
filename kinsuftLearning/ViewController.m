//
//  ViewController.m
//  kinsuftLearning
//
//  Created by administrator on 5/13/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import "ViewController.h"
#import "KinsuftCommon.h"
#import "LoginViewController.h"

@interface ViewController ()
@property (strong, nonatomic) UIViewController* loginViewController;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIColor* tabBarTintColor = [KinsuftCommon getColor:@"123456"];
    
    //指定所有的tabbar的item的tintcolor
    [[UITabBar appearance] setTintColor:tabBarTintColor];
    
    //显示登录界面
    [self showLogin];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showLogin
{
    UIStoryboard* mainStroyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.loginViewController = [mainStroyboard instantiateViewControllerWithIdentifier:@"loginViewControllerID"];
    
    UIImage* loginViewBackGroundImage;
    if (iPhone5) {
        loginViewBackGroundImage = [UIImage imageNamed:@"loginBackgroundImage-568"];
    }else{
        loginViewBackGroundImage = [UIImage imageNamed:@"loginBackgroundImage"];
    }
    
    self.loginViewController.view.backgroundColor = [UIColor colorWithPatternImage:loginViewBackGroundImage];
    [self.view addSubview:self.loginViewController.view];
}

@end
