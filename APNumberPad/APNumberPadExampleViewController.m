//
//  APNumberPadExampleViewController.m
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Andrew Podkovyrin. All rights reserved.
//

#import "APNumberPadExampleViewController.h"

#import "APNumberPad.h"
#import "APDarkPadStyle.h"
#import "APBluePadStyle.h"

@interface APNumberPadExampleViewController () <APNumberPadDelegate>

@property (strong, readwrite, nonatomic) UITextField *textField;
@property (strong, readwrite, nonatomic) UITextField *styledTextField;

@end

@implementation APNumberPadExampleViewController

- (void)loadView {
    [super loadView];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.styledTextField];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.textField.frame = CGRectMake(10.f, 50.f, CGRectGetWidth(self.view.bounds) - 10.f * 2, 30.f);
    self.styledTextField.frame = CGRectOffset(self.textField.frame, 0, 52.0f);
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectZero];
        _textField.borderStyle = UITextBorderStyleRoundedRect;
        _textField.inputView = ({
            APNumberPad *numberPad = [APNumberPad numberPadWithDelegate:self];
            
            [numberPad.leftFunctionButton setTitle:@"B" forState:UIControlStateNormal];
            numberPad.leftFunctionButton.titleLabel.adjustsFontSizeToFitWidth = YES;
            numberPad;
        });
    }
    return _textField;
}

- (UITextField *)styledTextField{
    
    if (!_styledTextField) {
        _styledTextField = [[UITextField alloc] initWithFrame:CGRectZero];
        _styledTextField.borderStyle = UITextBorderStyleRoundedRect;
        _styledTextField.inputView = ({
            APNumberPad *numberPad = [APNumberPad numberPadWithDelegate:self numberPadStyleClass:[APDarkPadStyle class]];
            
            [numberPad.leftFunctionButton setTitle:@"Change Style" forState:UIControlStateNormal];
            numberPad.leftFunctionButton.titleLabel.adjustsFontSizeToFitWidth = YES;
            numberPad;
        });
    }
    
    return _styledTextField;
}


#pragma mark - APNumberPadDelegate

- (void)numberPad:(APNumberPad *)numberPad functionButtonAction:(UIButton *)functionButton textInput:(UIResponder<UITextInput> *)textInput {
    if ([textInput isEqual:self.textField]) {
        [functionButton setTitle:[functionButton.currentTitle stringByAppendingString:@"z"] forState:UIControlStateNormal];
        [textInput insertText:@"#"];
    } else {
        Class currentSyle = [numberPad styleClass];
        
        Class nextStyle = currentSyle == [APDarkPadStyle class] ? [APBluePadStyle class] : [APDarkPadStyle class];
        self.styledTextField.inputView = ({
            APNumberPad *numberPad = [APNumberPad numberPadWithDelegate:self numberPadStyleClass:nextStyle];
            
            [numberPad.leftFunctionButton setTitle:@"Change Style" forState:UIControlStateNormal];
            numberPad.leftFunctionButton.titleLabel.adjustsFontSizeToFitWidth = YES;
            numberPad;
        });
       
        // Trick for update the inputview
        //
        [self.styledTextField resignFirstResponder];
        [self.styledTextField becomeFirstResponder];
    }
}

@end
