platform :ios, '16.2'

# ignore all warnings from all dependencies
inhibit_all_warnings!

target 'ArkanaDemo' do

  use_frameworks!

  pod 'ArkanaDemoSecrets', path: './ArkanaKeys/ArkanaDemoSecrets'

  pod 'ArkanaDemoSecretsInterfaces', path: './ArkanaKeys/ArkanaDemoSecretsInterfaces'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.2'
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
    end
  end
end
