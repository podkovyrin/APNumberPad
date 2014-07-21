APNumberPad
==========

APNumberPad is a custom keyboard for iOS allows you to create a keyboard `inputView` that looks and feels just like the iPhone keyboard with `UIKeyboardTypeNumberPad` as `keyboardType`. Also APNumberPad provides customizable left-function button.

<img src="https://raw.github.com/podkovyrin/APNumberPad/master/apnumberpad_demo.gif" alt="APNumberPad" title="APNumberPad demo" style="display:block; margin: 10px auto 30px auto; align:center"/>

## Features
 - FULLY repeats default iOS keyboard look'n'feel (input with "tap by tap", pan over keyboard and release finger on button, holding clear button, ...)
 - Device rotation
 - Customizable left function button
 - Customizable keyboard appearence (see `APNumberPadStyle.h`)
 - `UITextField` and `UITextView` support (or any other `UIResponder` object that responds to `UITextInput` protocol)
 - Input clicks

## Usage
 - **[CocoaPods](http://cocoapods.org):**
```
pod 'APNumberPad'
```
 - **Manual:**
1. Copy `APNumberPad/APNumberPad` folder anywhere to your project folder and add it to XCode.
2. Copy `APNumberPad/APNumberPad.bundle` anywhere to your project folder and add it to XCode.

##Sample

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

## Compatibility
iOS 6.0 or later.

## Notes
Inspired by https://github.com/kulpreetchilana/Custom-iOS-Keyboards and http://stackoverflow.com/questions/13205160/how-do-i-retrieve-keystrokes-from-a-custom-keyboard-on-an-ios-app/13205494#13205494

APNumberPad very gratefully makes use of backspace icon from Typicons set by Stephen Hutchings (http://typicons.com/), under Creative Commons (Attribution-Share Alike 3.0 Unported) license.

## Contributors

- [Vangeli Ontiveros](http://github.com/vanyas)

## License

APNumberPad is available under the MIT license.

Copyright © 2014 Andrew Podkovyrin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
