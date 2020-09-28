//
//  APDarkPadStyle.m
//  APNumberPad
//
//  Created by VANGELI ONTIVEROS on 14/07/14.
//  Copyright (c) 2014 Andrew Podkovyrin. All rights reserved.
//

#import "APDarkPadStyle.h"

@implementation APDarkPadStyle

#pragma mark - Number button

+ (UIFont *)numberButtonFont {
    return [UIFont fontWithName:@"STHeitiTC-Light" size:28.0];
}

+ (UIColor *)numberButtonTextColor {
    return [[UIColor whiteColor] colorWithAlphaComponent:0.8];
}

+ (UIColor *)numberButtonBackgroundColor {
    return [UIColor colorWithRed:108 / 255.0 green:122 / 255.0 blue:137 / 255.0 alpha:0.4];
}

+ (UIColor *)numberButtonHighlightedColor {
    return [UIColor colorWithRed:189 / 255.0 green:195 / 255.0 blue:199 / 255.0 alpha:1.0];
}

#pragma mark - Function button

+ (UIFont *)functionButtonFont {
    return [UIFont fontWithName:@"STHeitiTC-Light" size:28.0];
}

+ (UIColor *)functionButtonTextColor {
    return [UIColor blackColor];
}

+ (UIColor *)functionButtonBackgroundColor {
    return [UIColor colorWithRed:218 / 255.0 green:223 / 255.0 blue:225 / 255.0 alpha:0.8];
}

+ (UIColor *)functionButtonHighlightedColor {
    return [UIColor colorWithRed:238 / 255.0 green:238 / 255.0 blue:238 / 255.0 alpha:1.0];
}

@end
