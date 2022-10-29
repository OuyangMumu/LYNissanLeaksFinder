#
# Be sure to run `pod lib lint LYNissanLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LYNissanLeaksFinder'
  s.version          = '0.1.0'
  s.summary          = '基于MLeaksFinder二次维护LYNissanLeaksFinder.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/欧阳高俊/LYNissanLeaksFinder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '欧阳高俊' => 'ouyanggj@szlanyou.com' }
  s.source           = { :git => 'https://github.com/欧阳高俊/LYNissanLeaksFinder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  
  s.source_files  = "LYNissanLeaksFinder", "{LYNissanLeaksFinder,fishhook}/**/*.{h,m,mm,c}"

  mrr_files = [
    'LYNissanLeaksFinder/Associations/FBAssociationManager.h',
    'LYNissanLeaksFinder/Associations/FBAssociationManager.mm',
    'LYNissanLeaksFinder/Layout/Blocks/FBBlockStrongLayout.h',
    'LYNissanLeaksFinder/Layout/Blocks/FBBlockStrongLayout.m',
    'LYNissanLeaksFinder/Layout/Blocks/FBBlockStrongRelationDetector.h',
    'LYNissanLeaksFinder/Layout/Blocks/FBBlockStrongRelationDetector.m',
    'LYNissanLeaksFinder/Layout/Classes/FBClassStrongLayoutHelpers.h',
    'LYNissanLeaksFinder/Layout/Classes/FBClassStrongLayoutHelpers.m',
  ]

  files = Pathname.glob("LYNissanLeaksFinder/**/*.{h,m,mm}")
  files = files.map {|file| file.to_path}
  files = files.reject {|file| mrr_files.include?(file)}

  s.requires_arc = files.sort + [
    'fishhook/**/*.{c,h}'
  ]
  s.public_header_files = [
    'LYNissanLeaksFinder/Detector.h',
    'LYNissanLeaksFinder/Associations/FBAssociationManager.h',
    'LYNissanLeaksFinder/Graph/FBObjectiveCBlock.h',
    'LYNissanLeaksFinder/Graph/FBObjectiveCGraphElement.h',
    'LYNissanLeaksFinder/Graph/Specialization/FBObjectiveCNSCFTimer.h',
    'LYNissanLeaksFinder/Graph/FBObjectiveCObject.h',
    'LYNissanLeaksFinder/Graph/FBObjectGraphConfiguration.h',
    'LYNissanLeaksFinder/Filtering/FBStandardGraphEdgeFilters.h',
  ]

  s.framework = "Foundation", "CoreGraphics", "UIKit"
  s.library = 'c++'
end
