# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyperloop/version'
GEM_VERSION = Hyperloop::VERSION
require '../hyper-router/lib/hyper-router/version'
ROUTER_VERSION = HyperRouter::VERSION

Gem::Specification.new do |s|
  s.name        = 'hyperloop'
  s.version     = Hyperloop::VERSION
  s.summary     = 'Hyperloop stack and generators for Rails'
  s.description = 'This gem provide the full hyperloop stack for rails plus generators for Hyperloop elements'
  s.authors     = ['Loic Boutet', 'Adam George', 'Mitch VanDuyn', 'Jan Biedermann']
  s.email       = ['loic@boutet.com', 'jan@kursator.com']
  s.homepage    = 'http://ruby-hyperloop.org'
  s.license     = 'MIT'
  spec.metadata = {
    "homepage_uri" => 'http://ruby-hyperloop.org',
    "source_code_uri" => 'https://github.com/ruby-hyperloop/hyper-component'
  }
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(tasks)/}) }
  s.require_paths = ['lib']

  s.add_dependency 'hyper-model', GEM_VERSION
  s.add_dependency 'hyper-router', ROUTER_VERSION
  s.add_dependency 'hyperloop-config', GEM_VERSION
  s.add_dependency 'opal-browser', '~> 0.2.0'
  s.add_dependency 'opal-rails', '~> 0.9.3'
  s.add_dependency 'react-rails', '>= 2.3.0', '< 2.5.0'
  s.add_dependency 'mini_racer', '~> 0.1.14'
  s.add_runtime_dependency 'rails', '~> 5.1.4'
end
