//
//  APNumberButton.h
//
//  Created by Andrew Podkovyrin on 16/05/14.
//  Copyright (c) 2014 Podkovyrin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APNumberButton : UIButton

+ (instancetype)buttonWithBackgroundColor:(UIColor *)backgroundColor highlightedColor:(UIColor *)highlightedColor;

- (instancetype)initWithBackgroundColor:(UIColor *)backgroundColor highlightedColor:(UIColor *)highlightedColor;

- (void)np_touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;

@end

NS_ASSUME_NONNULL_END
