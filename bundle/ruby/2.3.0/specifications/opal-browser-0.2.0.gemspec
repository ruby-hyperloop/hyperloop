# -*- encoding: utf-8 -*-
# stub: opal-browser 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "opal-browser".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["meh.".freeze]
  s.date = "2015-07-18"
  s.email = "meh@schizofreni.co".freeze
  s.homepage = "http://github.com/opal/opal-browser".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Browser support for Opal.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<opal>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<paggio>.freeze, [">= 0"])
    else
      s.add_dependency(%q<opal>.freeze, [">= 0"])
      s.add_dependency(%q<paggio>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<opal>.freeze, [">= 0"])
    s.add_dependency(%q<paggio>.freeze, [">= 0"])
  end
end
