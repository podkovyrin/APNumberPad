//
//  NSBundle+APNumberPad.m
//  APNumberPad
//
//  Created by Kian Lim on 8/9/16.
//  Copyright © 2016 Andrew Podkovyrin. All rights reserved.
//
//  Category credits to Chris Dzombak https://github.com/NYTimes/NYTPhotoViewer

#import "NSBundle+APNumberPad.h"

@implementation NSBundle (APNumberPad)

+ (instancetype)ap_numberPadResourceBundle {
    static NSBundle *resourceBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *resourceBundlePath = [[NSBundle bundleForClass:NSClassFromString(@"APNumberPad")] pathForResource:@"APNumberPad" ofType:@"bundle"];
        resourceBundle = [self bundleWithPath:resourceBundlePath];
    });

    return resourceBundle;
}

@end
