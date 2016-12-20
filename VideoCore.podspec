Pod::Spec.new do |s|
  s.name                = "VideoCore"
  s.module_name         = "VideoCore"
  s.version             = "0.3.2"
  s.summary             = "An audio and video manipulation and streaming pipeline with support for RTMP."
  s.description      = <<-DESC
                          This is a work-in-progress library with the
                          intention of being an audio and video manipulation
                          and streaming pipeline for iOS.
                          DESC
  s.homepage            = "https://github.com/jgh-/VideoCore"
  s.license             = 'MIT'
  s.authors             = { "James Hurley" => "jamesghurley@gmail.com" }
  s.source              = { :git => "https://github.com/jgh-/VideoCore.git", :tag => s.version.to_s, :submodules => true }

  s.requires_arc        = false

  s.header_dir          = 'videocore'
  s.header_mappings_dir = 'videocore'

  s.source_files        = [ 'videocore/Shared/**/*.h*', 'videocore/Shared/**/*.cpp',
                            'videocore/Apple/Shared/**/*.h*', 'videocore/Apple/Shared/**/*.cpp', 'videocore/Apple/Shared/**/*.m*',
                            'videocore/Apple/iOS/**/*.h*', 'videocore/Apple/iOS/**/*.cpp', 'videocore/Apple/iOS/**/*.m*']

  s.frameworks          = [ 'VideoToolbox', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreMedia',
                            'CoreVideo', 'OpenGLES', 'Foundation', 'CoreGraphics' ]

  s.libraries           = 'c++'

  s.dependency          'glm'
  s.dependency          'UriParser-cpp', '~> 0.1.3'

  s.ios.deployment_target = '8.0'

  # Before we can get OS X deployment working, we'll need to use sub-specs to
  # separate out the source files for OS X vs. iOS
  #s.osx.deployment_target = '10.7'

  # s.subspec 'Swift' do |swift|
  #   swift.public_header_files = 'videocore/Apple/iOS/api/**/*.h'
  #   swift.source_files        = [ 'videocore/Shared/**/*.h*', 'videcocore/Shared/**/*.cpp',
  #                           'videocore/Apple/Shared/**/*.h*', 'videocore/Apple/Shared/**/*.cpp', 'videocore/Apple/Shared/**/*.m*',
  #                           'videocore/Apple/iOS/**/*.h*', 'videocore/Apple/iOS/**/*.cpp', 'videocore/Apple/iOS/**/*.m*']
  #   swift.xcconfig            = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/VideoCore" }
  #   swift.ios.deployment_target = '8.0'
  # end

end
