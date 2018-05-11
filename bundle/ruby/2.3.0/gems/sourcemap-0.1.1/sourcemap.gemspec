# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'source_map/version'

Gem::Specification.new do |spec|
  spec.name          = "sourcemap"
  spec.version       = SourceMap::VERSION
  spec.authors       = ["Josh Peek", "Alex MacCaw"]
  spec.email         = ["alex@alexmaccaw.com"]
  spec.description   = %q{Ruby source maps}
  spec.summary       = %q{Ruby source maps}
  spec.homepage      = "http://github.com/maccman/sourcemap"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
