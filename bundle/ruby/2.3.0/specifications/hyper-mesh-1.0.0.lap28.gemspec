# -*- encoding: utf-8 -*-
# stub: hyper-mesh 1.0.0.lap28 ruby lib

Gem::Specification.new do |s|
  s.name = "hyper-mesh".freeze
  s.version = "1.0.0.lap28"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mitch VanDuyn".freeze, "Jan Biedermann".freeze]
  s.date = "2018-05-06"
  s.description = "HyperMesh is the base for HyperModel. HyperModel gives your HyperComponents CRUD access to your ActiveRecord models on the client, using the the standard ActiveRecord API. HyperModel also implements push notifications (via a number of possible technologies) so changes to records on the server are dynamically updated on all authorised clients.".freeze
  s.email = ["mitch@catprint.com".freeze, "jan@kursator.com".freeze]
  s.homepage = "http://ruby-hyperloop.org".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "React based CRUD access and Synchronization of active record models across multiple clients".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<hyper-component>.freeze, ["= 1.0.0.lap28"])
      s.add_runtime_dependency(%q<hyper-operation>.freeze, ["= 1.0.0.lap28"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_development_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_development_dependency(%q<hyper-trace>.freeze, [">= 0"])
      s.add_development_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_development_dependency(%q<opal-activesupport>.freeze, ["~> 0.3.1"])
      s.add_development_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
      s.add_development_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_development_dependency(%q<parser>.freeze, [">= 0"])
      s.add_development_dependency(%q<puma>.freeze, [">= 0"])
      s.add_development_dependency(%q<pusher>.freeze, [">= 0"])
      s.add_development_dependency(%q<pusher-fake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_development_dependency(%q<reactrb-rails-generator>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-expectations>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-mocks>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
      s.add_development_dependency(%q<rspec-wait>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
      s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
      s.add_development_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
      s.add_development_dependency(%q<unparser>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-rescue>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<hyper-component>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<hyper-operation>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, [">= 0"])
      s.add_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
      s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
      s.add_dependency(%q<hyper-trace>.freeze, [">= 0"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_dependency(%q<opal-activesupport>.freeze, ["~> 0.3.1"])
      s.add_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
      s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
      s.add_dependency(%q<parser>.freeze, [">= 0"])
      s.add_dependency(%q<puma>.freeze, [">= 0"])
      s.add_dependency(%q<pusher>.freeze, [">= 0"])
      s.add_dependency(%q<pusher-fake>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
      s.add_dependency(%q<reactrb-rails-generator>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-mocks>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
      s.add_dependency(%q<rspec-wait>.freeze, [">= 0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
      s.add_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
      s.add_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
      s.add_dependency(%q<unparser>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<hyper-component>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<hyper-operation>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<chromedriver-helper>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<factory_bot_rails>.freeze, [">= 0"])
    s.add_dependency(%q<hyper-spec>.freeze, ["= 1.0.0.lap28"])
    s.add_dependency(%q<hyper-trace>.freeze, [">= 0"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_dependency(%q<opal-activesupport>.freeze, ["~> 0.3.1"])
    s.add_dependency(%q<opal-browser>.freeze, ["~> 0.2.0"])
    s.add_dependency(%q<opal-rails>.freeze, ["~> 0.9.4"])
    s.add_dependency(%q<parser>.freeze, [">= 0"])
    s.add_dependency(%q<puma>.freeze, [">= 0"])
    s.add_dependency(%q<pusher>.freeze, [">= 0"])
    s.add_dependency(%q<pusher-fake>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<react-rails>.freeze, ["< 2.5.0", ">= 2.4.0"])
    s.add_dependency(%q<reactrb-rails-generator>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-expectations>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-mocks>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-steps>.freeze, ["~> 2.1.1"])
    s.add_dependency(%q<rspec-wait>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51.0"])
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
    s.add_dependency(%q<spring-commands-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<mini_racer>.freeze, ["~> 0.1.15"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.8.1"])
    s.add_dependency(%q<unparser>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
  end
end
