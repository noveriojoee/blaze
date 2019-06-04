//
//  RegistrationStepTwoViewController.m
//  blaze
//
//  Created by Noverio Joe on 01/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "RegistrationStepTwoViewController.h"

@interface RegistrationStepTwoViewController ()

@end

@implementation RegistrationStepTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllerBackgroundWithImageName:@"bg_login" targetedView:self.view];
}

- (IBAction)btnBack:(id)sender {
    [self navBack:sender];
}

- (IBAction)btnNext:(id)sender {
    [self performSegueWithIdentifier:@"segue_to_registration_three" sender:sender];
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
