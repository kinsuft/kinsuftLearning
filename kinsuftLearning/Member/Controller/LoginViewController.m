//
//  LoginViewController.m
//  kinsuftLearning
//
//  Created by administrator on 5/13/14.
//  Copyright (c) 2014 CT. All rights reserved.
//

#import "LoginViewController.h"
#import "KinsuftCommon.h"
#import "ItemDef.h"
#import "UIImageView+WebCache.h"

@interface LoginViewController ()

@property (strong, nonatomic) IBOutlet UIView* bgView;
@property (strong, nonatomic) IBOutlet UIImageView* doctorHeadPhotoView;
@property (strong, nonatomic) IBOutlet UITextField* telephoneTextField;
@property (strong, nonatomic) IBOutlet UITextField* passwordTextField;

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
    
    DoctorInfoItem* doctor = [KinsuftCommon readUserInfoFromFile];
    if (doctor != nil ) {
        [self.doctorHeadPhotoView setImageWithURL:[NSURL URLWithString:doctor.doctorHeadPhoto]];
    }
                     
    UIImage* loginViewBackGroundImage;
    if (iPhone5) {
        loginViewBackGroundImage = [UIImage imageNamed:@"background-568"];
    }else{
        loginViewBackGroundImage = [UIImage imageNamed:@"background"];
    }
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:loginViewBackGroundImage];
    self.bgView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"registerContentBg"]];
    
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

- (IBAction)done:(id)sender
{
    
}

@end
