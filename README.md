# APNumberPad

[![CI Status](http://img.shields.io/travis/Andrew Podkovyrin/APNumberPad.svg?style=flat)](https://travis-ci.org/Andrew Podkovyrin/APNumberPad)
[![Version](https://img.shields.io/cocoapods/v/APNumberPad.svg?style=flat)](http://cocoapods.org/pods/APNumberPad)
[![License](https://img.shields.io/cocoapods/l/APNumberPad.svg?style=flat)](http://cocoapods.org/pods/APNumberPad)
[![Platform](https://img.shields.io/cocoapods/p/APNumberPad.svg?style=flat)](http://cocoapods.org/pods/APNumberPad)

APNumberPad is a custom keyboard for iOS allows you to create a keyboard `inputView` that looks and feels just like the iPhone keyboard with `UIKeyboardTypeNumberPad` as `keyboardType`. Also APNumberPad provides customizable left-function button.

<img src="https://raw.github.com/podkovyrin/APNumberPad/master/apnumberpad_demo.gif" alt="APNumberPad" title="APNumberPad demo" style="display:block; margin: 10px auto 30px auto; align:center"/>

## Features
 - FULLY repeats default iOS keyboard look'n'feel (input with "tap by tap", pan over keyboard and release finger on button, holding clear button, ...)
 - Device rotation
 - Customizable left function button
 - Customizable keyboard appearence (see `APNumberPadStyle.h`)
 - `UITextField` and `UITextView` support (or any other `UIResponder` object that responds to `UITextInput` protocol)
 - Input clicks

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```obj-c
// in .h:
#import <APNumberPad/APNumberPad.h>

@interface ExampleViewController : UIViewController <APNumberPadDelegate>

// in .m:

UITextField *textField = [[UITextField alloc] initWithFrame:CGRectZero];
textField.inputView = ({
    APNumberPad *numberPad = [APNumberPad numberPadWithDelegate:self];
    // configure function button
    //
    [numberPad.leftFunctionButton setTitle:@"Func" forState:UIControlStateNormal];
    numberPad.leftFunctionButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    numberPad;
});

#pragma mark - APNumberPadDelegate

- (void)numberPad:(APNumberPad *)numberPad functionButtonAction:(UIButton *)functionButton textInput:(UIResponder<UITextInput> *)textInput {
    [textInput insertText:@"#"];
}
```

## Requirements
iOS 8.2 or later.

## Notes
Inspired by https://github.com/kulpreetchilana/Custom-iOS-Keyboards and http://stackoverflow.com/questions/13205160/how-do-i-retrieve-keystrokes-from-a-custom-keyboard-on-an-ios-app/13205494#13205494

APNumberPad very gratefully makes use of backspace icon from Typicons set by Stephen Hutchings (http://typicons.com/), under Creative Commons (Attribution-Share Alike 3.0 Unported) license.

## Installation via CocoaPods

APNumberPad is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "APNumberPad"
```

## Installation via Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate APNumberPad into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "podkovyrin/APNumberPad"
```

## Author

Andrew Podkovyrin, podkovyrin@gmail.com

## License

APNumberPad is available under the MIT license. See the LICENSE file for more info.
