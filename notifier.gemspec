$:.push File.expand_path('../lib', __FILE__)
require 'notifier/version'

Gem::Specification.new do |s|
  s.name      = 'notifier'
  s.version   = Notifier::VERSION
  s.platform  = Gem::Platform::RUBY
  s.authors   = ['Marco Antônio Singer']
  s.email     = 'markaum@gmail.com'
  s.summary   = 'Loldesign notifier'

  s.add_dependency('ruby_gntp', '0.3.4')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = ['notifier']
  s.require_paths = ['lib']
end
