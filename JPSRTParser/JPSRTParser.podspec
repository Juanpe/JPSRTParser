Pod::Spec.new do |s|
  s.name         = "JPSRTParser"
  s.version      = "1.0"
  s.summary      = "SRT parser"
  s.homepage     = "https://github.com/Juanpe/JPSRTParser"
  s.license      = 'MIT'
  s.author       = { "Juanpe Catalán" => "juanpecm@gmail.com" }
  s.ios.deployment_target = '6.1'
  s.source       = { :git => "https://github.com/Juanpe/JPSRTParser.git", :tag => "v#{s.version}"}
  s.source_files  = 'JPSRTParser/*.{h,m}'
  s.requires_arc = true
end
