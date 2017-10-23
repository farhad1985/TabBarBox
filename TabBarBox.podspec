Pod::Spec.new do |s|
  s.name             = 'TabBarBox'
  s.version          = '0.1.1'
  s.summary          = 'TabBarBox'
  s.homepage         = 'https://github.com/farhad1985/TabBarBox'
  s.author           = { 'Farhad Faramarzi' => 'farhad.public@gmail.com' }
  s.license          = { :type => 'GPL2', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/farhad1985/TabBarBox.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '9.0'
  s.source_files = 'TabBarBox/*'
 
end
