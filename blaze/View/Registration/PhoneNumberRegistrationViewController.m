//
//  PhoneNumberRegistrationViewController.m
//  blaze
//
//  Created by Noverio Joe on 01/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "PhoneNumberRegistrationViewController.h"

@interface PhoneNumberRegistrationViewController ()
@property (weak, nonatomic) IBOutlet BlazePhoneNumberTextField *tfPhoneNumber;
@end

@implementation PhoneNumberRegistrationViewController

- (void)setTfPhoneNumber:(BlazePhoneNumberTextField *)tfPhoneNumber{
    [tfPhoneNumber bind:^(NSString *value) {
        NSLog(value);
    }];
    _tfPhoneNumber = tfPhoneNumber;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.tfPhoneNumber initDDL:@"PHONENUMBER_DDL" initialContent:@[@"+62",@"+65"] pickerTitle:@"Kode Negara" withDefaultValue:NO buttonText:@"+62" parentView:self.view];
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
