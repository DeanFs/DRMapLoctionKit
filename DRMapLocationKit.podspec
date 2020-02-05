#
# Be sure to run `pod lib lint DRMapLocationKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DRMapLocationKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DRMapLocationKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DeanFs/DRMapLocationKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dean_F' => 'stone.feng1990@gmail.com' }
  s.source           = { :git => 'https://github.com/DeanFs/DRMapLocationKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.resource = 'DRMapLocationKit/Assets/*', 'DRMapLocationKit/Classes/**/*.xib'
  
  s.source_files = 'DRMapLocationKit/Classes/*.{h,m}'
  
  s.subspec 'Managers' do |ss|
      ss.source_files = 'DRMapLocationKit/Classes/Managers/*.{h,m}'
      ss.dependency 'DRMapLocationKit/Models'
  end
  
  s.subspec 'Models' do |ss|
      ss.source_files = 'DRMapLocationKit/Classes/Models/*.{h,m}'
  end
  
  # s.resource_bundles = {
  #   'DRMapLocationKit' => ['DRMapLocationKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency 'AMap2DMap'
  s.dependency 'AMapSearch'
  s.dependency 'AMapLocation'
  s.dependency 'MJExtension'
  s.dependency 'DRMacroDefines'
  s.dependency 'HexColors', '4.0.0'
  
end
