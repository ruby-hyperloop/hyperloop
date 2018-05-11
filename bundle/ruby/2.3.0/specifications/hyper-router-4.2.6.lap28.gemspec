# -*- encoding: utf-8 -*-
# stub: hyper-router 4.2.6.lap28 ruby lib

Gem::Specification.new do |s|
  s.name = "hyper-router".freeze
  s.version = "4.2.6.lap28"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam George".freeze, "Jan Biedermann".freeze]
  s.date = "2018-05-06"
  s.description = "Adds the ability to write and use the react-router in Ruby through Opal".freeze
  s.email = ["adamgeorge.31@gmail.com".freeze, "jan@kursator.com".freeze]
  s.homepage = "http://ruby-hyperloop.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "hyper-router for Opal, part of ruby-hyperloop".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hyper-component>.freeze, ["= 1.0.0.lap28"])
      s.add_runtime_dependency(%q<hyper-react>.freeze, ["= 1.0.0.lap28"])
      s.add_runtime_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
      s.add_runtime_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_runtime_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_development_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_development_dependency(%q<listen>.freeze, [">= 0"])
      s.add_development_dependency(%q<parser>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-mocks>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
      s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
      s.add_development_dependency(%q<sinatra>.freeze, [">= 0"])
      s.add_development_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
      s.add_development_dependency(%q<unparser>.freeze, [">= 0"])
      s.add_development_dependency(%q<webdrivers>.freeze, [">= 0"])
    else
      s.add_dependency(%q<hyper-component>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<hyper-react>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
      s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<listen>.freeze, [">= 0"])
      s.add_dependency(%q<parser>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-mocks>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
      s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
      s.add_dependency(%q<sinatra>.freeze, [">= 0"])
      s.add_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
      s.add_dependency(%q<unparser>.freeze, [">= 0"])
      s.add_dependency(%q<webdrivers>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<hyper-component>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<hyper-react>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
    s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<listen>.freeze, [">= 0"])
    s.add_dependency(%q<parser>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-mocks>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, [">= 0"])
    s.add_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
    s.add_dependency(%q<unparser>.freeze, [">= 0"])
    s.add_dependency(%q<webdrivers>.freeze, [">= 0"])
  end
end
