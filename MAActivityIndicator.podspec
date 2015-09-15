Pod::Spec.new do |s|
  s.name         = "MAActivityIndicator"
  s.version      = "0.1"
  s.summary      = "Dot activity indicator."

  s.description  = <<-DESC
                    MAActivityIndicator is a custom activity indicator with little dots written in Swift. All the credit goes to mownier for the original indicator view in objective C.
                    DESC
  s.homepage     = "https://github.com/micazeve/MAActivityIndicator"

  s.license      = { :type => "MIT", :file => "LICENSE.txt" }
  s.author             = { "Michaël Azevedo" => "micazeve@gmail.com" }
  s.social_media_url   = "https://twitter.com/micazeve"
  s.platforms	 = { :ios => "8.0" }

  s.source       = { :git => "https://github.com/micazeve/MAActivityIndicator.git", :branch => "master", :tag => '0.1'}
  s.source_files = "Classes/**/*.swift"

  s.ios.deployment_target = '8.0'

  s.framework  = "Foundation"
  s.requires_arc = true
end
