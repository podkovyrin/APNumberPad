//
//  APNumberPadStyle.h
//
//  Created by Andrew Podkovyrin on 21/07/14.
//  Copyright (c) 2014 Andrew Podkovyrin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol APNumberPadStyle <NSObject>

+ (CGRect)numberPadFrame;
+ (CGFloat)separator;
+ (UIColor *)numberPadBackgroundColor;

+ (UIFont *)numberButtonFont;
+ (UIColor *)numberButtonBackgroundColor;
+ (UIColor *)numberButtonHighlightedColor;
+ (UIColor *)numberButtonTextColor;

+ (UIFont *)functionButtonFont;
+ (UIColor *)functionButtonBackgroundColor;
+ (UIColor *)functionButtonHighlightedColor;
+ (UIColor *)functionButtonTextColor;
+ (UIImage *)clearFunctionButtonImage;
+ (UIImage *)clearFunctionButtonImageHighlighted;

@end

NS_ASSUME_NONNULL_END
