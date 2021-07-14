Pod::Spec.new do |s|
    s.name         = "MycrocastSDK"
    s.version      = "1.0.2"
    s.summary      = "mycrocast sdk"
    s.description  = "The listener side for the mycrocast app"
    s.homepage     = "https://mycrocast.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = "mycrocast Gmbh"
    s.source       = { :git => "https://github.com/mycrocast/iOS-sdk-framework.git", :tag => "1.0.2" }
    s.vendored_frameworks = "MycrocastSDK.xcframework"
    s.platform = :ios
    s.swift_version = "5.0"
    s.ios.deployment_target  = '11.0'
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.dependency 'MQTTClient'
end