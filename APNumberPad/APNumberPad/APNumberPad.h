//
//  APNumberPad.h
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Podkovyrin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "APNumberPadStyle.h"

@protocol APNumberPadDelegate;

///

@interface APNumberPad : UIView <UIInputViewAudioFeedback>

+ (instancetype)numberPadWithDelegate:(id<APNumberPadDelegate>)delegate numberPadStyleClass:(Class)styleClass;

+ (instancetype)numberPadWithDelegate:(id<APNumberPadDelegate>)delegate;

/**
 *  Left function button for custom configuration
 */
@property (strong, readonly, nonatomic) UIButton *leftFunctionButton;

/**
 *  Right function button
 */
@property (strong, readwrite, nonatomic) UIButton *clearButton;

/**
 *  The class to use for styling the number pad
 */
@property (strong, readonly, nonatomic) Class<APNumberPadStyle> styleClass;

@end

///

@protocol APNumberPadDelegate <NSObject>

@optional

- (void)numberPad:(APNumberPad *)numberPad functionButtonAction:(UIButton *)functionButton textInput:(UIResponder<UITextInput> *)textInput;

@end
