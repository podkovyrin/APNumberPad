//
//  APNumberButton.m
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Podkovyrin. All rights reserved.
//

#import "APNumberButton.h"

#pragma mark - UIImage additions

@implementation UIImage (APNumberPad)

+ (UIImage *)ap_imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0, 0.0, 1.0, 1.0);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

@end

#pragma mark - APNumberButton

@implementation APNumberButton

+ (instancetype)buttonWithBackgroundColor:(UIColor *)backgroundColor highlightedColor:(UIColor *)highlightedColor {
    return [[self alloc] initWithBackgroundColor:backgroundColor highlightedColor:highlightedColor];
}

- (instancetype)initWithBackgroundColor:(UIColor *)backgroundColor highlightedColor:(UIColor *)highlightedColor {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        [self setBackgroundImage:[UIImage ap_imageWithColor:backgroundColor] forState:UIControlStateNormal];
        [self setBackgroundImage:[UIImage ap_imageWithColor:highlightedColor] forState:UIControlStateHighlighted];
    }
    return self;
}

#pragma mark - UIResponder

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.nextResponder touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    [self.nextResponder touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    [self.nextResponder touchesEnded:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
    [self.nextResponder touchesCancelled:touches withEvent:event];
}

#pragma mark -

- (void)np_touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
}

@end
