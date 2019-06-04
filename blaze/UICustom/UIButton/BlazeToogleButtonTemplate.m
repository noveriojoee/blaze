//
//  BlazeToogleButtonTemplate.m
//  blaze
//
//  Created by Noverio Joe on 02/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "BlazeToogleButtonTemplate.h"

@implementation BlazeToogleButtonTemplate

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    self.layer.borderWidth = 1.0;
    self.clipsToBounds = true;
    self.layer.cornerRadius = self.frame.size.height/2;
}

@end
