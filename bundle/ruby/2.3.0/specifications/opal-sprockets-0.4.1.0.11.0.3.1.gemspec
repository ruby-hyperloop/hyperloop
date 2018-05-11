# -*- encoding: utf-8 -*-
# stub: opal-sprockets 0.4.1.0.11.0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "opal-sprockets".freeze
  s.version = "0.4.1.0.11.0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elia Schito".freeze, "Adam Beynon".freeze]
  s.date = "2017-12-30"
  s.description = "Sprockets support for Opal.".freeze
  s.email = "elia@schito.me".freeze
  s.homepage = "http://opalrb.org".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Sprockets support for Opal.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sprockets>.freeze, ["~> 3.1"])
      s.add_runtime_dependency(%q<opal>.freeze, ["~> 0.11.0"])
      s.add_runtime_dependency(%q<tilt>.freeze, [">= 1.4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
    else
      s.add_dependency(%q<sprockets>.freeze, ["~> 3.1"])
      s.add_dependency(%q<opal>.freeze, ["~> 0.11.0"])
      s.add_dependency(%q<tilt>.freeze, [">= 1.4"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<sprockets>.freeze, ["~> 3.1"])
    s.add_dependency(%q<opal>.freeze, ["~> 0.11.0"])
    s.add_dependency(%q<tilt>.freeze, [">= 1.4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
  end
end
