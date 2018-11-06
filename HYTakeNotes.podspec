
Pod::Spec.new do |s|

  s.name         = "HYTakeNotes"
  s.version      = "1.0.4"
  s.summary      = "A simple modal view controller with UITextView on it."

  s.description  = <<-DESC
                    This is a very simple modal view controller that contains an input UITextView and two buttons to Save or Close the dialog. HYTakeNotes was created by inspiration of Twitter’s compose tweet screen.
                    DESC

  s.homepage     = "https://github.com/RomanN2/HYTakeNotes"
  s.screenshots  = "https://raw.githubusercontent.com/RomanN2/HYTakeNotes/master/.github/Screenshot.png"

  s.license      = "MIT"


  s.author             = { "Roman Nazarkevych" => "rnazarkevych@gmail.com" }
  s.social_media_url   = "https://twitter.com/RomanN2"

  s.platform     = :ios
  s.ios.deployment_target = "10.0"


  s.source       = { :git => "https://github.com/RomanN2/HYTakeNotes.git", :tag => "1.0.4" }
  s.source_files  = "HYTakeNotes/**/*.{swift}"
  s.resources = "HYTakeNotes/*.{xcassets,xib}"

  s.swift_version = "4.2"

end
