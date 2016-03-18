#
# Be sure to run `pod lib lint YTX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YTX"
  s.version          = "0.1.1"
  s.summary          = "YTX."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "use YTX"

  s.homepage         = "https://github.com/BruceLilonglong/YTX"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "lilonglong" => "596927598@qq.com" }
  s.source           = { :git => "https://github.com/BruceLilonglong/YTX.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
#  s.resource_bundles = {
#    'YTX' => ['Pod/Assets/*.png']
#  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  NSArray = {:spec_name => "NSArray", :source_files =>['Pod/Classes/**/NSArray+*.{h,m}']}
  
  NSURL = {:spec_name => "NSURL", :source_files =>['Pod/Classes/**/NSURL+*.{h,m}']}
  
  UIImage = {:spec_name => "UIImage", :source_files =>['Pod/Classes/**/UIImage+*.{h,m}']}
  
  UITextView = {:spec_name => "UITextView", :source_files =>['Pod/Classes/**/UITextView+*.{h,m}']}
  
  $all_spec = [NSArray, NSURL, UIImage, UITextView]
  
  $all_spec.each do |spec|
      s.subspec spec[:spec_name] do |ss|
          
          if spec[:source_files]
              ss.source_files = spec[:source_files]
          end
      end
  end
  
end









