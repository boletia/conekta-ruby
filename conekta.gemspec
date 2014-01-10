# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conekta/version'

Gem::Specification.new do |spec|
  spec.name          = "conekta"
  spec.version       = Conekta::VERSION
  spec.authors       = ["MauricioMurga"]
  spec.email         = ["mauricio@conekta.io"]
  spec.description   = %q{Ruby library for https://api.conekta.io}
  spec.summary       = %q{This library provides https://api.conekta.io operations}
  spec.homepage      = "https://www.conekta.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.3"
  spec.add_dependency "rake"
  spec.add_dependency "rspec"
  spec.add_dependency "faraday"
  spec.add_dependency "json"
  spec.add_dependency "sys-uname"
end
