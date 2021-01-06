#
# Be sure to run `pod lib lint SodiumPoc.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SodiumPoc'
  s.version          = '0.1.0'
  s.summary          = 'SodiumPoC'

  s.description      = <<-DESC
  SodiumPoC - static lib PoC
                       DESC

  s.homepage         = 'https://github.com/ph4r05/SodiumPoc'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ph4r05' => 'dusan.klinec@gmail.com' }
  s.source           = { :git => 'https://github.com/ph4r05/SodiumPoc.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ph4r05'

  s.platform              = :ios, '13.0'
  s.ios.deployment_target = '13.0'

  s.source_files = 'SodiumPoc/Classes/**/*'
  s.dependency 'Sodium', '~> 0.9.1'
  
  # s.resource_bundles = {
  #   'SodiumPoc' => ['SodiumPoc/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
