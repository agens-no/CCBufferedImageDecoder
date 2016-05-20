Pod::Spec.new do |s|
  s.name             = "CCBufferedImageDecoder"
  s.version          = "1.0"
  s.summary          = "Download and decode progressive JPEGs easily."
  s.homepage         = "https://github.com/contentful-labs/Concorde/"
  s.social_media_url = 'https://twitter.com/contentful'

  s.license = {
    :type => 'MIT',
    :file => 'LICENSE'
  }

  s.authors      = { "Boris Bügling" => "boris@buegling.com" }
  s.source       = { :git => "https://github.com/agens-no/CCBufferedImageDecoder.git",
                     :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target     = '8.0'
  s.ios.frameworks            = 'UIKit'
  s.osx.deployment_target     = '10.9'

  s.source_files         = 'Source/*.{h,m}', 'vendor/libjpeg-turbo/include/*'
  s.public_header_files  = 'Source/CCBufferedImageDecoder.h'
  s.vendored_libraries   = 'vendor/libjpeg-turbo/lib/libturbojpeg.a'
end
