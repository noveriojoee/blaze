//
//  RegistrationStepThreeViewController.m
//  blaze
//
//  Created by Noverio Joe on 01/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "RegistrationStepThreeViewController.h"

@interface RegistrationStepThreeViewController ()


@property (weak, nonatomic) IBOutlet BlazeDropDownTextField *tfDDLWeight;
@property (weak, nonatomic) IBOutlet BlazeDropDownTextField *tfDDLHeight;
@property (weak, nonatomic) IBOutlet BlazeDropDownTextField *tfDDLTshirt;
@property (weak, nonatomic) IBOutlet BlazeDropDownTextField *tfDDLDateOfBirth;



@end

@implementation RegistrationStepThreeViewController

#pragma BindingViewToViewModel
- (void)setTfDDLHeight:(BlazeDropDownTextField *)tfDDLHeight{
    [tfDDLHeight bind:^(NSString *indexValue) {
        NSLog(indexValue);
    }];
    _tfDDLHeight = tfDDLHeight;
}

- (void)setTfDDLWeight:(BlazeDropDownTextField *)tfDDLWeight{
    [tfDDLWeight bind:^(NSString *indexValue) {
        NSLog(indexValue);
    }];
    _tfDDLWeight = tfDDLWeight;
}

- (void)setTfDDLTshirt:(BlazeDropDownTextField *)tfDDLTshirt{
    [tfDDLTshirt bind:^(NSString *indexValue) {
        NSLog(indexValue);
    }];
    _tfDDLTshirt = tfDDLTshirt;
}

- (void)setTfDDLDateOfBirth:(BlazeDropDownTextField *)tfDDLDateOfBirth{
    [tfDDLDateOfBirth bind:^(NSString *indexValue) {
        NSLog(indexValue);
    }];
    _tfDDLDateOfBirth = tfDDLDateOfBirth;
}

#pragma END

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setViewControllerBackgroundWithImageName:@"bg_login" targetedView:self.view];
    [self.tfDDLWeight initDDL:@"WEIGHT_DDL" initialContent:@[@"155",@"160",@"165",@"170",@"175"] pickerTitle:@"Berat Badan" withDefaultValue:NO buttonText:@"CM" parentView:self.view];

    [self.tfDDLHeight initDDL:@"HEIGHT_DDL" initialContent:@[@"155",@"160",@"165",@"170",@"175"] pickerTitle:@"Tinggi Badan" withDefaultValue:NO buttonText:@"CM" parentView:self.view];
    
    [self.tfDDLTshirt initDDL:@"SIZE_DDL" initialContent:@[@"155",@"160",@"165",@"170",@"175"] pickerTitle:@"T-Shirt Size" withDefaultValue:NO buttonText:@"CM" parentView:self.view];
    
    [self.tfDDLDateOfBirth initDDL:@"DOB_DDL" initialContent:@[@"155",@"160",@"165",@"170",@"175"] pickerTitle:@"Tempat Tanggal Lahir" withDefaultValue:NO buttonText:@"CM" parentView:self.view];
    
}

- (IBAction)btnNext:(id)sender {
    [self performSegueWithIdentifier:@"segue_to_register_phoneNumber" sender:sender];
}

- (IBAction)btnBack:(id)sender {
    [self navBack:sender];
}

#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

@end
