//
//  APBluePadStyle.m
//  APNumberPad
//
//  Created by VANGELI ONTIVEROS on 15/07/14.
//  Copyright (c) 2014 Andrew Podkovyrin. All rights reserved.
//

#import "APBluePadStyle.h"

@implementation APBluePadStyle

#pragma mark - Pad

+ (UIColor *)numberPadBackgroundColor {
    return  [UIColor colorWithRed:0.124 green:0.551 blue:0.796 alpha:1.000];
}

#pragma mark - Number button

+ (UIFont *)numberButtonFont {
    return [UIFont fontWithName:@"STHeitiTC-Light" size:28.f];
}

+ (UIColor *)numberButtonTextColor {
    return [UIColor whiteColor];
}

+ (UIColor *)numberButtonBackgroundColor {
    return [UIColor colorWithRed:38/255.0f green:169/255.0f blue:242/255.0f alpha:0.8];
}

+ (UIColor *)numberButtonHighlightedColor{
    return [UIColor colorWithRed:0.686 green:0.832 blue:0.994 alpha:1.000];
}

#pragma mark - Function button

+ (UIFont *)functionButtonFont {
    return [UIFont fontWithName:@"STHeitiTC-Light" size:28.f];
}

+ (UIColor *)functionButtonTextColor {
    return [UIColor blackColor];
}

+ (UIColor *)functionButtonBackgroundColor {
    return [UIColor colorWithRed:153/255.0f green:218/255.0f blue:255/255.0f alpha:0.8];
}

+ (UIColor *)functionButtonHighlightedColor {
    return  [UIColor colorWithRed:221/255.0f green:241/255.0f blue:254/255.0f alpha:1.0];
}

+ (UIImage *)clearFunctionButtonImage {
    return [UIImage imageNamed:@"APNumberPad.bundle/images/apnumberpad_backspace_icon.png"];
}

@end
