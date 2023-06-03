require "open-uri"
Pod::Spec.new do |s|
  s.name                = "OpenCVFramework"
  s.version             = "4.1.0"
  s.summary             = "OpenCV (Computer Vision) for iOS."
  s.homepage            = "https://opencv.org"
  s.description         = URI.open("https://raw.githubusercontent.com/opencv/opencv/#{s.version}/README.md", &:read).gsub(/.*Gittip.*\n\n/, "")
  s.license             = { :type => "3-clause BSD", :text => URI.open("https://raw.githubusercontent.com/opencv/opencv/#{s.version}/LICENSE", &:read) }
  s.author              = "opencv.org"
  s.source              = { :http => "https://github.com/opencv/opencv/releases/download/#{s.version}/opencv-#{s.version}-ios-framework.zip" }
  s.platform            = :ios, URI.open("https://raw.githubusercontent.com/opencv/opencv/#{s.version}/platforms/ios/build_framework.py", &:read).match(/(?<=IPHONEOS_DEPLOYMENT_TARGET=)'?[0-9.]+'?/).to_s.gsub(/'/, "")
  s.requires_arc        = false
  s.preserve_paths      = "opencv2.framework"
  s.source_files        = "opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}"
  s.public_header_files = "opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}"
  s.vendored_frameworks = "opencv2.framework"
  s.header_dir          = "opencv2"
  s.header_mappings_dir = "opencv2.framework/Versions/A/Headers/"
  s.libraries           = "stdc++"
  s.frameworks          = "Accelerate", "AssetsLibrary", "AVFoundation", "CoreGraphics", "CoreImage", "CoreMedia", "CoreVideo", "Foundation", "QuartzCore", "UIKit"
end
