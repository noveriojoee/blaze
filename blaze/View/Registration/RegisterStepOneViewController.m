//
//  RegisterStepOneViewController.m
//  blaze
//
//  Created by Noverio Joe on 01/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "RegisterStepOneViewController.h"

@interface RegisterStepOneViewController ()

@end

@implementation RegisterStepOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllerBackgroundWithImageName:@"bg_login" targetedView:self.view];
}

- (IBAction)btnClose:(id)sender {
    [self navBack:sender];
}

- (IBAction)btnNext:(id)sender {
    [self performSegueWithIdentifier:@"segue_to_registration_two" sender:sender];
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
