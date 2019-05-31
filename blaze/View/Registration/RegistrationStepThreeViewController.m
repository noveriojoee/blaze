//
//  RegistrationStepThreeViewController.m
//  blaze
//
//  Created by Noverio Joe on 01/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "RegistrationStepThreeViewController.h"

@interface RegistrationStepThreeViewController ()

@end

@implementation RegistrationStepThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllerBackgroundWithImageName:@"bg_splashscreen" targetedView:self.view];
}

- (IBAction)btnFinish:(id)sender {
}

- (IBAction)btnBack:(id)sender {
    [self navBack:sender];
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
