//
//  APNumberPadStyle.h
//
//  Created by Andrew Podkovyrin on 21/07/14.
//  Copyright (c) 2014 Andrew Podkovyrin. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@end
