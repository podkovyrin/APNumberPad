//
//  NSBundle+APNumberPad.m
//  APNumberPad
//
//  Created by Kian Lim on 8/9/16.
//  Copyright © 2016 Andrew Podkovyrin. All rights reserved.
//
//  Category credits to Chris Dzombak https://github.com/NYTimes/NYTPhotoViewer

#import "NSBundle+APNumberPad.h"
#import "APNumberPad.h"

@implementation NSBundle (APNumberPad)

+ (instancetype)ap_numberPadResourceBundle {
#if SWIFT_PACKAGE
    return SWIFTPM_MODULE_BUNDLE;
#else
    static NSBundle *resourceBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        resourceBundle = [NSBundle bundleForClass:[APNumberPad class]];
    });

    return resourceBundle;
#endif
}

@end
