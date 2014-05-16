//
//  APNumberPadExampleViewController.m
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Andrew Podkovyrin. All rights reserved.
//

#import "APNumberPadExampleViewController.h"

#import "APNumberPad.h"

@interface APNumberPadExampleViewController () <APNumberPadDelegate>

@property (strong, readwrite, nonatomic) UITextField *textField;

@end

@implementation APNumberPadExampleViewController

- (void)loadView {
    [super loadView];
    
    [self.view addSubview:self.textField];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.textField.frame = CGRectMake(10.f, 50.f, CGRectGetWidth(self.view.bounds) - 10.f * 2, 30.f);
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

#pragma mark - APNumberPadDelegate

- (void)numberPad:(APNumberPad *)numberPad functionButtonAction:(UIButton *)functionButton textInput:(UIResponder<UITextInput> *)textInput {
    [functionButton setTitle:[functionButton.currentTitle stringByAppendingString:@"z"] forState:UIControlStateNormal];
    [textInput insertText:@"#"];
}

@end
