# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyperloop/version'

Gem::Specification.new do |s|
  s.name        = 'hyperloop'
  s.version     = Hyperloop::VERSION
  s.summary     = 'Hyperloop stack and generators for Rails'
  s.description = 'This gem provide the full hyperloop stack for rails plus generators for Hyperloop elements'
  s.authors     = ['Loic Boutet', 'Adam George', 'Mitch VanDuyn']
  s.email       = 'loic@boutet.com'
  s.homepage    = "http://ruby-hyperloop.io"
  s.license     = "MIT"
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # s.files       = ['lib/hyper-rails.rb',
  #                  'lib/generators/hyperloop/install_generator.rb',
  #                  'lib/generators/hyperloop/component_generator.rb',
  #                  'lib/generators/hyperloop/router_generator.rb',
  #                  'lib/generators/hyperloop/templates/component_template.rb',
  #                  'lib/generators/hyperloop/templates/router_template.rb']
  s.license     = 'MIT'
  s.require_paths = ["lib"]

  s.add_dependency 'hyper-model', '0.15.0'
  s.add_dependency 'hyper-router', '>= 4.0.0'
  s.add_dependency 'opal-browser'
  s.add_dependency 'opal-rails', '~> 0.9.3'
  s.add_dependency 'react-rails', '~> 2.3.0'
  s.add_dependency 'therubyracer', '>= 0.12.3'
  s.add_runtime_dependency 'rails', '>= 5.1.4'
end
