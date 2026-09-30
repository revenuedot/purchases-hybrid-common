Pod::Spec.new do |s|
  s.name             = "RevenueDotPurchasesHybridCommonUI"
  s.module_name      = "PurchasesHybridCommonUI"
  s.version          = "19.4.1"
  s.summary          = "Common files for hybrid SDKs for RevenueCat UI RevenueDot fork of RevenueCat's MIT SDK."

  s.description      = <<-DESC
                       Save yourself the hastle of implementing a subscriptions backend. This is RevenueDot's drop-in fork of RevenueCat's MIT SDK; it talks to RevenueDot, the open-source subscription server (https://revenuedot.app). Not affiliated with RevenueCat.
                       DESC

  s.homepage         = "https://revenuedot.app"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors           = { "RevenueDot" => "https://github.com/revenuedot", "RevenueCat, Inc. (original MIT SDK)" => "https://github.com/RevenueCat" }
  s.source           = { :git => "https://github.com/revenuedot/purchases-hybrid-common.git", :tag => "#{s.version}-revenuedot" }
  s.documentation_url = "https://revenuedot.app/docs"

  s.framework      = 'StoreKit'
  s.framework      = 'SwiftUI'

  s.dependency 'RevenueDotPurchasesUI', '5.91.0'
  s.dependency 'RevenueDotPurchasesHybridCommon', s.version.to_s
  s.swift_version = '5.7'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.visionos.deployment_target = '1.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.source_files = ['ios/PurchasesHybridCommon/PurchasesHybridCommonUI/**/*.{h,m,swift}']

  s.public_header_files = [
    'ios/PurchasesHybridCommon/PurchasesHybridCommonUI/*.h'
  ]

end
