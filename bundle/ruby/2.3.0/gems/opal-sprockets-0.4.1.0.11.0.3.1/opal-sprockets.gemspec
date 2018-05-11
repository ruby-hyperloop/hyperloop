# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/sprockets/version', __FILE__)

Gem::Specification.new do |s|
  s.name         = 'opal-sprockets'
  s.version      = Opal::Sprockets::VERSION
  s.authors      = ['Elia Schito', 'Adam Beynon']
  s.email        = 'elia@schito.me'
  s.homepage     = 'http://opalrb.org'
  s.summary      = 'Sprockets support for Opal.'
  s.description  = 'Sprockets support for Opal.'

  s.files          = `git ls-files`.split("\n")
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths  = ['lib']

  s.add_dependency 'sprockets', "~> #{Opal::Sprockets::SPROCKETS_VERSION}"
  s.add_dependency 'opal', "~> #{Opal::Sprockets::OPAL_VERSION}"
  s.add_dependency 'tilt', '>= 1.4'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rack-test'
end
