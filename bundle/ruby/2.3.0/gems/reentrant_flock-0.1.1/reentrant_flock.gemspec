# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reentrant_flock/version"

Gem::Specification.new do |spec|
  spec.name          = "reentrant_flock"
  spec.version       = ReentrantFlock::VERSION
  spec.authors       = ["Naotoshi Seo"]
  spec.email         = ["sonots@gmail.com"]

  spec.summary       = %q{A reentrant/recursive flock.}
  spec.description   = %q{A reentrant/recursive flock.}
  spec.homepage      = "https://github.com/sonots/reentrant_flock"
  spec.licenses      = ["MIT"]

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "test-unit-power_assert"
end
