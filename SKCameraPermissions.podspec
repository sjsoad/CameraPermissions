Pod::Spec.new do |s|

# 1
s.platform = :ios
s.swift_version = '4.2'
s.ios.deployment_target = '10.0'
s.name = "SKCameraPermissions"
s.summary = "SKCameraPermissions allows you to check Camera permissions"
s.requires_arc = true

# 2
s.version = "0.0.5"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Serhii Kostian" => "skostyan666@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/sjsoad/CameraPermissions"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/sjsoad/CameraPermissions.git", :tag => "#{s.version}"}

# 7
s.framework = "AVFoundation"

# 8
s.source_files = "CameraPermissions/**/*.{swift}"

end
