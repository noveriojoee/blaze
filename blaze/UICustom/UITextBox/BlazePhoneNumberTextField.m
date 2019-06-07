//
//  BlazePhoneNumberTextField.m
//  blaze
//
//  Created by Noverio Joe on 07/06/19.
//  Copyright © 2019 gid. All rights reserved.
//

#import "BlazePhoneNumberTextField.h"
#import "UtilitiesColouring.h"
#import "ActionSheetStringPicker.h"


@interface BlazePhoneNumberTextField()<UITextFieldDelegate>

@property UIView* parentView;
@property NSArray* contents;
@property NSString* pickerTitle;
@property NSInteger selectedIndex;
@property UIButton* dropdownButton;
@property (nonatomic, copy) void (^onFormValueChanged)(NSString*);

@end

@implementation BlazePhoneNumberTextField

-(void)drawDropDownButton{
    self.dropdownButton = [UIButton buttonWithType:UIButtonTypeCustom];
    dispatch_async(dispatch_get_main_queue(), ^(void){
        [self.dropdownButton addTarget:self action:@selector(ddlBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
        self.dropdownButton.frame = CGRectMake(0, 0, 50, self.frame.size.height);
        self.dropdownButton.clipsToBounds = YES;
        [self.dropdownButton setTintColor:UIColor.blackColor];
        [self.dropdownButton setBackgroundColor:UIColor.grayColor];
        [self.dropdownButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
        [self addSubview:self.dropdownButton];
    });
}

-(void)removeDropDownbutton{
    if(self.dropdownButton != nil){
        [self.dropdownButton removeFromSuperview];
        self.dropdownButton = nil;
    }
}

-(IBAction)ddlBtnPressed:(id)sender{
    [ActionSheetStringPicker showPickerWithTitle:self.pickerTitle rows:self.contents initialSelection:self.selectedIndex doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.dropdownButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"do nothing");
    } origin:self];
}

- (void)drawRect:(CGRect)rect {
    self.selectedIndex = 0;
    self.delegate = self;
    self.tintColor = UIColor.clearColor;
    [self addTarget:self action:@selector(textFieldShouldBeginEditing:) forControlEvents:UIControlEventEditingDidBegin];
    self.layer.cornerRadius = self.frame.size.height/2;
    self.clipsToBounds=YES;
    [self setValue:[UtilitiesColouring colorWithHexString:@"9C9C97"] forKeyPath:@"_placeholderLabel.textColor"];
}

-(void)initDDL :(NSString*)cellID initialContent : (NSArray*)contents pickerTitle : (NSString*)title withDefaultValue : (BOOL)isWithDefaultValue buttonText : (NSString*)btnTxt parentView : (UIView*)parentView{
    self.parentView = parentView;
    self.cellID = cellID;
    self.pickerTitle = title;
    
    if(contents.count > 0){
        self.contents = contents;
        if (isWithDefaultValue){
            [self setTextValue:[contents objectAtIndex:self.selectedIndex] index:self.selectedIndex];
        }
        [self setEnabled:YES];
        [self drawDropDownButton];
        [self.dropdownButton setTitle:btnTxt forState:UIControlStateNormal];
    }else{
        self.text = @"";
        [self setEnabled:NO];
        [self removeDropDownbutton];
    }
}

//SetContent Version 1.2
-(void)setContentDDLWithContent : (NSArray*)contents withDefaultValue : (BOOL) isWithDefaultValue defaultText : (NSString*)text{
    self.text = text;
    if(contents.count > 0){
        self.contents = contents;
        if (isWithDefaultValue){
            [self setTextValue:[contents objectAtIndex:self.selectedIndex] index:self.selectedIndex];
        }
        [self setEnabled:YES];
        [self drawDropDownButton];
    }else{
        [self setTextValue:@"" index:-99];
        [self setEnabled:NO];
        [self removeDropDownbutton];
    }
}

-(void)bind : (void(^)(NSString *)) callback{
    self.onFormValueChanged = callback;
}

-(void)setTextValue : (NSString*)value index : (NSInteger)index{
    self.text = value;
    if (index == -99){
        self.onFormValueChanged(@"");
    }else{
        self.onFormValueChanged([@(index) stringValue]);
    }
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return NO;
}

@end
