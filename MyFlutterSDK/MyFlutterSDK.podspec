#
# NOTE: This podspec is NOT to be published. It is only used as a local source!
#

Pod::Spec.new do |s|
  s.name             = 'MyFlutterSDK'
  s.version          = '1.0.0'
  s.summary          = 'Flutter 产物 pod'
  s.description      = <<-DESC
Flutter 产物 sdk, 包含 App.framework, Flutter.framework.
                       DESC
  s.homepage         = 'https://github.com/ZeroJian/XBFlutterSDK'
  s.license          = { :type => 'MIT' }
  s.author           = { 'ZeroJian' => 'zj17223412@outlook.com' }
  s.source           = { :git => 'https://github.com/ZeroJian/MyFlutterSDK.git', :tag => s.version.to_s }
  s.requires_arc = true	
  s.vendored_frameworks = 'MyFlutterSDK/**/*.{framework}'
end
