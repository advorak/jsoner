# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jsoner/version'

Gem::Specification.new do |spec|
  spec.name          = "jsoner"
  spec.version       = Jsoner::VERSION
  spec.authors       = ["simlegate"]
  spec.email         = ["simlegate@163.com"]
  spec.description   = %q{Serialize HTML tables into JSON in Ruby}
  spec.summary       = %q{Serialize HTML tables into JSON in Ruby}
  spec.homepage      = "https://github.com/simlegate/jsoner"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "nokogiri", ">= 1.10.8"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
