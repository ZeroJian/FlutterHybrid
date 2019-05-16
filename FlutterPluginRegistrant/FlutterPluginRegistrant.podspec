#
# NOTE: This podspec is NOT to be published. It is only used as a local source!
#

Pod::Spec.new do |s|
  s.name             = 'FlutterPluginRegistrant'
  s.version          = '1.0.0'
  s.summary          = 'High-performance, high-fidelity mobile apps.'
  s.description      = <<-DESC
Flutter provides an easy and productive way to build and deploy high-performance mobile apps for Android and iOS.
                       DESC
  s.homepage         = 'https://github.com/ZeroJian/FlutterPluginRegistrant'
  s.license          = { :type => 'MIT' }
  s.author           = { 'ZeroJian' => 'zj17223412@outlook.com' }
  s.source           = { :git => 'https://github.com/ZeroJian/FlutterPluginRegistrant.git', :tag => s.version.to_s }
  s.requires_arc = true	
  s.source_files = 'FlutterPluginRegistrant/**/*'
  
  s.public_header_files = 'FlutterPluginRegistrant/**/*.h'
  s.dependency 'MyFlutterSDK'
  s.dependency 'flutter_boost'
  s.dependency 'xservice_kit'

end
