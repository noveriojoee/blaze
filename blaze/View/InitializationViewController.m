//
//  InitializationViewController.m
//  blaze
//
//  Created by Noverio Joe on 31/05/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "InitializationViewController.h"

@interface InitializationViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation InitializationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.activityIndicator startAnimating];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self performSegueWithIdentifier:@"segue_to_login" sender:self];
}

@end
