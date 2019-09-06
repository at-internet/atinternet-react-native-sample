require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-at-wrapper"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-at-wrapper
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-at-wrapper"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :http => 'file:' + __dir__ + '/wrapper.zip' }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.swift_version = '5'

  s.dependency "React"
  s.dependency "ATInternet-Apple-SDK/Tracker"
	
  # s.dependency "..."
end

