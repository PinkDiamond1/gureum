workspace 'Gureum'
use_frameworks!
platform :osx, "11.0"

target 'OSXCore' do
    project 'Gureum.xcodeproj'
    pod 'cdebug'
    pod 'FoundationExtension', '~> 2.1.0'
    pod 'Fuse', '~> 1.4.0'
end
target 'OSX' do
    project 'Gureum.xcodeproj'
    pod 'FoundationExtension', '~> 2.1.0'
    pod 'MASShortcut'
end
target 'Preferences' do
    project 'Gureum.xcodeproj'
    pod 'MASShortcut'
end
target 'OSXTestApp' do
    project 'Gureum.xcodeproj'
    pod 'MASShortcut'
    pod 'FoundationExtension', '~> 2.1.0'
end
target 'OSXTests' do
    project 'Gureum.xcodeproj'
    pod 'MASShortcut'
end

=begin
target :'App' do
    platform :ios, "9.0"
    project 'iOS.xcodeproj'
    pod 'UIKitExtension', '~> 2.1.0'
    # pod 'Fabric'
    pod 'Firebase/Crashlytics'
    pod 'GoogleMobileAds'
    pod 'GlobalActivityIndicatorView', '>= 0.1.1'
end
target :'iOS' do
    platform :ios, "9.0"
    project 'iOS.xcodeproj'
    pod 'UIKitExtension', '~> 2.0.1'
    # pod 'Fabric'
    pod 'Firebase/Crashlytics'
end
target :'iOSTests' do
    platform :ios, "9.0"
    project 'iOS.xcodeproj'
    pod 'UIKitExtension', '~> 2.0.1'
end
=end
