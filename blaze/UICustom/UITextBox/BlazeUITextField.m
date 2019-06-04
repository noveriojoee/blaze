//
//  BlazeUITextField.m
//  blaze
//
//  Created by Noverio Joe on 02/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "BlazeUITextField.h"
#import "UtilitiesColouring.h"

@implementation BlazeUITextField
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    self.layer.cornerRadius = self.frame.size.height/2;
    self.clipsToBounds=YES;
    [self setValue:[UtilitiesColouring colorWithHexString:@"9C9C97"] forKeyPath:@"_placeholderLabel.textColor"];
}

@end
