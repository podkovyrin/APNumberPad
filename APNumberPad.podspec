Pod::Spec.new do |s|
  s.name             = 'APNumberPad'
  s.version          = '1.2.3'
  s.summary          = 'Full clone of iOS number keyboard with customizable function button'

  s.description      = <<-DESC
Custom keyboard for iOS allows you to create a keyboard inputView
that looks and feels just like the iPhone keyboard
with UIKeyboardTypeNumberPad as keyboardType.
Also APNumberPad provides customizable left-function button.
                       DESC

  s.homepage         = 'https://github.com/podkovyrin/APNumberPad'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrew Podkovyrin' => 'podkovyrin@gmail.com' }
  s.source           = { :git => 'https://github.com/podkovyrin/APNumberPad.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/podkovyr'

  s.ios.deployment_target = '8.0'

  s.source_files = 'APNumberPad/Classes/**/*'
  s.resource_bundles = {
    'APNumberPad' => ['APNumberPad/Assets/*.png']
  }

  s.frameworks = 'UIKit'
end
