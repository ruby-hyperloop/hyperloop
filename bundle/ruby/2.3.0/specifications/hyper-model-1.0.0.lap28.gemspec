# -*- encoding: utf-8 -*-
# stub: hyper-model 1.0.0.lap28 ruby lib

Gem::Specification.new do |s|
  s.name = "hyper-model".freeze
  s.version = "1.0.0.lap28"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mitch VanDuyn".freeze, "Jan Biedermann".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-05-06"
  s.description = "HyperModel gives your HyperComponents CRUD access to your ActiveRecord models on the client, using the the standard ActiveRecord API. HyperModel also implements push notifications (via a number of possible technologies) so changes to records on the server are dynamically updated on all authorised clients.".freeze
  s.email = ["mitch@catprint.com".freeze, "jan@kursator.com".freeze]
  s.homepage = "http://ruby-hyperloop.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Isomorphic ActiveRecord wrapper for Hyperloop".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hyper-mesh>.freeze, ["= 1.0.0.lap28"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_development_dependency(%q<listen>.freeze, [">= 0"])
      s.add_development_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_development_dependency(%q<opal>.freeze, ["< 0.12.0", ">= 0.11.0"])
      s.add_development_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
      s.add_development_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_development_dependency(%q<puma>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
      s.add_development_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    else
      s.add_dependency(%q<hyper-mesh>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
      s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<listen>.freeze, [">= 0"])
      s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_dependency(%q<opal>.freeze, ["< 0.12.0", ">= 0.11.0"])
      s.add_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
      s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_dependency(%q<puma>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
      s.add_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<hyper-mesh>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
    s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<listen>.freeze, [">= 0"])
    s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
    s.add_dependency(%q<opal>.freeze, ["< 0.12.0", ">= 0.11.0"])
    s.add_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
    s.add_dependency(%q<puma>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.7.0"])
    s.add_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
