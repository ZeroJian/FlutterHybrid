#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_boost'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin make flutter better to use!'
  s.description      = <<-DESC
A new Flutter plugin make flutter better to use!
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE.md' }
  s.author           = { 'Alibaba Xianyu' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'flutter_boost/**/*.{h,m,mm}'
  
  s.public_header_files = 
    'flutter_boost/Boost/FlutterBoost.h',
    'flutter_boost/Boost/FlutterBoostPlugin.h',
    'flutter_boost/Boost/FLBPlatform.h',
    'flutter_boost/Boost/FLBFlutterAppDelegate.h',
    'flutter_boost/Container/FLBFlutterViewContainer.h',
    'flutter_boost/Container/FLBViewControllerResultHandler.h'

  s.dependency 'MyFlutterSDK'
  s.dependency 'xservice_kit'

  s.requires_arc = true

  s.libraries = 'c++'

  s.ios.deployment_target = '8.0'
end

