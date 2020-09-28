//
//  APNumberPad.h
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Podkovyrin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "APNumberPadDefaultStyle.h"

NS_ASSUME_NONNULL_BEGIN

@protocol APNumberPadDelegate;

///

@interface APNumberPad : UIView <UIInputViewAudioFeedback>

+ (instancetype)numberPadWithDelegate:(id<APNumberPadDelegate>)delegate;
+ (instancetype)numberPadWithDelegate:(id<APNumberPadDelegate>)delegate numberPadStyleClass:(nullable Class)styleClass;

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

/**
 * These methods must be called after the UIResponder using this class as its input view becomes or resigns the first responder.
 * They will be called automatically if the UIResponder is an instance of UITextField or UITextView, but must be called manually
 * if it is any other class.
 */
- (void)didBecomeActiveInputViewForResponder:(UIResponder<UIKeyInput> *)responder;
- (void)didResignInputViewForResponder;

@end

///

@protocol APNumberPadDelegate <NSObject>

@optional

- (void)numberPad:(APNumberPad *)numberPad functionButtonAction:(UIButton *)functionButton textInput:(UIResponder<UIKeyInput> *)textInput;

@end

NS_ASSUME_NONNULL_END
