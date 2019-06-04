//
//  BaseViewController.h
//  blaze
//
//  Created by Noverio Joe on 29/11/18.
//  Copyright © 2018 vysokomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "blazeUITextField.h"
#import "UtilitiesColouring.h"
#import "BlazeDropDownTextField.h"

@interface BaseViewController : UIViewController

- (void)setViewControllerBackgroundWithImageName : (NSString*) imgName targetedView : (UIView*) targetView;
- (void)navBack:(id)sender;
- (void)registerSingleTapActionToView:(UIView*)view recognizer : (void(^)(UIGestureRecognizer*)) callback;
- (void)registerToolbarToTextField : (UITextField*) textField;

@end
