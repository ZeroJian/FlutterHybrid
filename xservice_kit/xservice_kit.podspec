#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'xservice_kit'
  s.version          = '0.0.1'
  s.summary          = 'A plutter plugin helps build scalable plugin'
  s.description      = <<-DESC
A plutter plugin helps build scalable plugin
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'xservice_kit/**/*.{h,m,mm}'
  s.public_header_files = 'xservice_kit/**/*.h'
  #s.dependency 'FlutterBuild'
  s.requires_arc = true
  
  s.dependency 'MyFlutterSDK'

  
  s.ios.deployment_target = '8.0'
end

