lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'bundler/version'

Gem::Specification.new do |s|
  s.name        = "Caesar.rb"
  s.version     = "1.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eric Rafaloff"]
  s.email       = ["hello@ericrafaloff.com"]
  s.homepage    = "http://github.com/ericr/caesar.rb"
  s.summary     = "A simple implementation of the Caesar Cipher in 22 lines of Ruby."
  s.description = "A simple implementation of the Caesar Cipher in 22 lines of Ruby."
  s.files        = Dir.glob("{lib}/**/*") + %w(README.markdown)
  s.require_path = 'lib'
end
