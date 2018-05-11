# -*- encoding: utf-8 -*-
# stub: hyper-react 1.0.0.lap28 ruby lib

Gem::Specification.new do |s|
  s.name = "hyper-react".freeze
  s.version = "1.0.0.lap28"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Chang".freeze, "Adam Jahn".freeze, "Mitch VanDuyn".freeze, "Jan Biedermann".freeze]
  s.date = "2018-05-06"
  s.description = "Write React UI components in pure Ruby.".freeze
  s.email = ["mitch@catprint.com".freeze, "jan@kursator.com".freeze]
  s.homepage = "http://ruby-hyperloop.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Opal Ruby wrapper of React.js library.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hyper-store>.freeze, ["= 1.0.0.lap28"])
      s.add_runtime_dependency(%q<opal>.freeze, ["< 0.12.0", ">= 0.11.0"])
      s.add_runtime_dependency(%q<opal-activesupport>.freeze, ["~> 0.3.1"])
      s.add_runtime_dependency(%q<hyperloop-config>.freeze, ["= 1.0.0.lap28"])
      s.add_runtime_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_runtime_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_development_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
      s.add_development_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_development_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<listen>.freeze, [">= 0"])
      s.add_development_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_development_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_development_dependency(%q<opal-jquery>.freeze, [">= 0"])
      s.add_development_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_development_dependency(%q<opal-rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<puma>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<rails-controller-testing>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
    else
      s.add_dependency(%q<hyper-store>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<opal>.freeze, ["< 0.12.0", ">= 0.11.0"])
      s.add_dependency(%q<opal-activesupport>.freeze, ["~> 0.3.1"])
      s.add_dependency(%q<hyperloop-config>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
      s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<listen>.freeze, [">= 0"])
      s.add_dependency(%q<mime-types>.freeze, [">= 0"])
      s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
      s.add_dependency(%q<opal-jquery>.freeze, [">= 0"])
      s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_dependency(%q<opal-rspec>.freeze, [">= 0"])
      s.add_dependency(%q<puma>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<rails-controller-testing>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
    end
  else
    s.add_dependency(%q<hyper-store>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<opal>.freeze, ["< 0.12.0", ">= 0.11.0"])
    s.add_dependency(%q<opal-activesupport>.freeze, ["~> 0.3.1"])
    s.add_dependency(%q<hyperloop-config>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
    s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
    s.add_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
    s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<listen>.freeze, [">= 0"])
    s.add_dependency(%q<mime-types>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<opal-jquery>.freeze, [">= 0"])
    s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
    s.add_dependency(%q<opal-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<puma>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<rails-controller-testing>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
  end
end
