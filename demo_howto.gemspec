# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'demo_howto/version'

Gem::Specification.new do |spec|
  spec.name          = "demo_howto"
  spec.version       = DemoHowto::VERSION
  spec.authors       = ["Nicolas Ledez"]
  spec.email         = ["github@ledez.net"]
  spec.description   = %q{A dummy gem to make a howto}
  spec.summary       = %q{Watch doc to learn howto make a gem}
  spec.homepage      = "http://blog.ledez.net/divers/ruby-ta-premiere-librairie/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "wdm" if RUBY_PLATFORM =~ /mingw/
  spec.add_development_dependency "ruby_gntp" if RUBY_PLATFORM =~ /mingw/
  spec.add_development_dependency "rb-fsevent" if RUBY_PLATFORM =~ /darwin/
  spec.add_development_dependency "growl" if RUBY_PLATFORM =~ /darwin/
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
