//
//  BlazePhoneNumberTextField.h
//  blaze
//
//  Created by Noverio Joe on 07/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlazePhoneNumberTextField : UITextField
@property NSString* cellID;
-(void)initDDL :(NSString*)cellID initialContent : (NSArray*)contents pickerTitle : (NSString*)title withDefaultValue : (BOOL)isWithDefaultValue buttonText : (NSString*)btnTxt parentView : (UIView*)parentView;
-(void)setContentDDLWithContent : (NSArray*)contents withDefaultValue : (BOOL) isWithDefaultValue defaultText : (NSString*)text;
-(void)bind : (void(^)(NSString *)) callback;
@end

NS_ASSUME_NONNULL_END
