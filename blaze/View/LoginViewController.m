//
//  LoginViewController.m
//  blaze
//
//  Created by Noverio Joe on 31/05/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllerBackgroundWithImageName:@"bg_splashscreen" targetedView:self.view];
}

- (IBAction)btnRegister:(id)sender {
    [self performSegueWithIdentifier:@"segue_to_register" sender:sender];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
