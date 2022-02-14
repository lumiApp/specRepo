
Pod::Spec.new do |spec|

  spec.name         = "LumiSDK"
  spec.version      = "0.0.1"
  spec.summary      = "binary For module"
  spec.homepage     = "https://github.com/lumiApp/LumiSDK"
  spec.license      = "MIT"
  spec.author             = { "lumiapp" => "lumiapp@aqara.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/lumiApp/LumiSDK.git", :tag => "#{spec.version}" }
  
  spec.frameworks = 'Foundation','UIKit'
  
  spec.subspec 'LMFramework' do |aa|

    aa.vendored_frameworks = "Base/*.framework"

    aa.dependency 'AFNetworking'
    aa.dependency 'SVProgressHUD'
    aa.dependency 'YYModel'
    
  end
  
  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'YES' }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64' }

end
