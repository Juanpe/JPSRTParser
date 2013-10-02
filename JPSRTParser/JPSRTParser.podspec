Pod::Spec.new do |s|
  s.name         = "JPSRTParser"
  s.version      = "1.0"
  s.summary      = "A short description of JPSRTParser."
  s.description  = <<-DESC
                   A longer description of JPSRTParser in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = "https://github.com/Juanpe/JPSRTParser"
  s.license      = 'MIT (example)'
  s.author       = { "Juanpe Catalán" => "juanpecm@gmail.com" }
  s.ios.deployment_target = '6.1'
  s.source       = { :git => "https://github.com/Juanpe/JPSRTParser.git", :tag => "v#{s.version}"}
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.requires_arc = true
end
