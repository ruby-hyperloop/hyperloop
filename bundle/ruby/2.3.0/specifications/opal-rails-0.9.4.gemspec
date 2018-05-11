# -*- encoding: utf-8 -*-
# stub: opal-rails 0.9.4 ruby lib

Gem::Specification.new do |s|
  s.name = "opal-rails".freeze
  s.version = "0.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elia Schito".freeze]
  s.date = "2018-02-14"
  s.description = "Rails bindings for opal JS engine".freeze
  s.email = ["elia@schito.me".freeze]
  s.homepage = "https://github.com/opal/opal-rails#readme".freeze
  s.licenses = ["MIT-LICENSE".freeze]
  s.rubyforge_project = "opal-rails".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Rails bindings for opal JS engine".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["< 6.0", ">= 4.1"])
      s.add_runtime_dependency(%q<sprockets-rails>.freeze, ["< 4.0", ">= 2.3.3"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<opal>.freeze, ["< 0.12", ">= 0.10.0"])
      s.add_runtime_dependency(%q<opal-jquery>.freeze, ["~> 0.4.0"])
      s.add_runtime_dependency(%q<opal-sprockets>.freeze, ["~> 0.4.1"])
      s.add_runtime_dependency(%q<opal-activesupport>.freeze, [">= 0.0.5"])
      s.add_development_dependency(%q<execjs>.freeze, [">= 0"])
      s.add_development_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.3"])
      s.add_development_dependency(%q<poltergeist>.freeze, ["~> 1.15.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara-webkit>.freeze, [">= 0"])
      s.add_development_dependency(%q<puma>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, ["< 6.0", ">= 4.1"])
      s.add_dependency(%q<sprockets-rails>.freeze, ["< 4.0", ">= 2.3.3"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<opal>.freeze, ["< 0.12", ">= 0.10.0"])
      s.add_dependency(%q<opal-jquery>.freeze, ["~> 0.4.0"])
      s.add_dependency(%q<opal-sprockets>.freeze, ["~> 0.4.1"])
      s.add_dependency(%q<opal-activesupport>.freeze, [">= 0.0.5"])
      s.add_dependency(%q<execjs>.freeze, [">= 0"])
      s.add_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.3"])
      s.add_dependency(%q<poltergeist>.freeze, ["~> 1.15.0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 2.1"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
      s.add_dependency(%q<puma>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["< 6.0", ">= 4.1"])
    s.add_dependency(%q<sprockets-rails>.freeze, ["< 4.0", ">= 2.3.3"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<opal>.freeze, ["< 0.12", ">= 0.10.0"])
    s.add_dependency(%q<opal-jquery>.freeze, ["~> 0.4.0"])
    s.add_dependency(%q<opal-sprockets>.freeze, ["~> 0.4.1"])
    s.add_dependency(%q<opal-activesupport>.freeze, [">= 0.0.5"])
    s.add_dependency(%q<execjs>.freeze, [">= 0"])
    s.add_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.3"])
    s.add_dependency(%q<poltergeist>.freeze, ["~> 1.15.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
    s.add_dependency(%q<puma>.freeze, [">= 0"])
  end
end
