Pod::Spec.new do |s|
  s.name         = "Nimble-Snapshots"
  s.version      = "9.2.0"
  s.summary      = "Nimble matchers for iOSSnapshotTestCase"
  s.description  = <<-DESC
                   Nimble matchers for iOSSnapshotTestCase. Highly derivative of [Expecta Matchers for iOSSnapshotTestCase](https://github.com/dblock/ios-snapshot-test-case-expecta).
                   DESC
  s.homepage     = "https://github.com/ashfurrow/Nimble-Snapshots"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Ash Furrow" => "ash@ashfurrow.com" }
  s.social_media_url   = "http://twitter.com/ashfurrow"
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.swift_version = '5.0'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
  s.source       = { :git => "https://github.com/ashfurrow/Nimble-Snapshots.git", :tag => s.version }
  s.default_subspec = "Core"
  s.frameworks  = "Foundation", "XCTest", "UIKit"

  s.subspec "Core" do |ss|
    ss.public_header_files = 'Sources/Nimble_Snapshots/*.h', 'Sources/Nimble-Snapshots-Core/include/*.{h,m,swift}'
    ss.source_files  = "Sources/Nimble_Snapshots/*.{h,m,swift}",
                        "Sources/Nimble_Snapshots/DynamicType/*.{swift,m,h}",
                        "Sources/Nimble_Snapshots/DynamicSize/*.{swift}",
                        "Sources/Nimble_Snapshots-Swift-Core/*.{h,m,swift}",
                        "Sources/Nimble-Snapshots-Core/**/*.{h,m,swift}"
    ss.dependency "iOSSnapshotTestCase", "~> 6.0"
    ss.dependency "Nimble"
  end

  # for compatibiliy reasons
  s.subspec "DynamicType" do |ss|
    ss.dependency "Nimble-Snapshots/Core"
  end

  s.subspec "DynamicSize" do |ss|
    ss.dependency "Nimble-Snapshots/Core"
  end
end
