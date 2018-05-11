# -*- encoding: utf-8 -*-
# stub: opal-activesupport 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "opal-activesupport".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elia Schito".freeze]
  s.date = "2018-01-28"
  s.description = "The port of the glorious ActiveSupport for Opal".freeze
  s.email = ["elia@schito.me".freeze]
  s.homepage = "http://opalrb.org".freeze
  s.rdoc_options = ["--main".freeze, "README".freeze, "--line-numbers".freeze, "--include".freeze, "opal".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "The port of the glorious ActiveSupport for Opal".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<opal>.freeze, ["< 1.0.0", ">= 0.5.0"])
      s.add_development_dependency(%q<opal-minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<opal>.freeze, ["< 1.0.0", ">= 0.5.0"])
      s.add_dependency(%q<opal-minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<opal>.freeze, ["< 1.0.0", ">= 0.5.0"])
    s.add_dependency(%q<opal-minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
