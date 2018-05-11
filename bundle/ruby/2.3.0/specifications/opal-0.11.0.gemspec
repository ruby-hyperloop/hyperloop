# -*- encoding: utf-8 -*-
# stub: opal 0.11.0 ruby lib

Gem::Specification.new do |s|
  s.name = "opal".freeze
  s.version = "0.11.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elia Schito".freeze, "meh.".freeze, "Adam Beynon".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-12-08"
  s.description = "Opal is a Ruby to JavaScript compiler. It is source-to-source, making it fast as a runtime. Opal includes a compiler (which can be run in any browser), a corelib and runtime implementation. The corelib/runtime is also very small.".freeze
  s.email = ["elia@schito.me".freeze, "meh@schizofreni.co".freeze]
  s.executables = ["opal".freeze, "opal-build".freeze, "opal-mspec".freeze, "opal-repl".freeze]
  s.files = ["exe/opal".freeze, "exe/opal-build".freeze, "exe/opal-mspec".freeze, "exe/opal-repl".freeze]
  s.homepage = "https://opalrb.com".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Ruby runtime and core library for JavaScript".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sourcemap>.freeze, ["~> 0.1.0"])
      s.add_runtime_dependency(%q<hike>.freeze, ["~> 1.2"])
      s.add_runtime_dependency(%q<ast>.freeze, [">= 2.3.0"])
      s.add_runtime_dependency(%q<parser>.freeze, ["= 2.3.3.1"])
      s.add_development_dependency(%q<mspec>.freeze, ["= 1.5.20"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<racc>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6.0"])
      s.add_development_dependency(%q<octokit>.freeze, ["~> 2.4.0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_development_dependency(%q<opal-minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
      s.add_development_dependency(%q<benchmark-ips>.freeze, [">= 0"])
    else
      s.add_dependency(%q<sourcemap>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<hike>.freeze, ["~> 1.2"])
      s.add_dependency(%q<ast>.freeze, [">= 2.3.0"])
      s.add_dependency(%q<parser>.freeze, ["= 2.3.3.1"])
      s.add_dependency(%q<mspec>.freeze, ["= 1.5.20"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<racc>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6.0"])
      s.add_dependency(%q<octokit>.freeze, ["~> 2.4.0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.7"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0"])
      s.add_dependency(%q<opal-minitest>.freeze, [">= 0"])
      s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
      s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<sourcemap>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<hike>.freeze, ["~> 1.2"])
    s.add_dependency(%q<ast>.freeze, [">= 2.3.0"])
    s.add_dependency(%q<parser>.freeze, ["= 2.3.3.1"])
    s.add_dependency(%q<mspec>.freeze, ["= 1.5.20"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<racc>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6.0"])
    s.add_dependency(%q<octokit>.freeze, ["~> 2.4.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<opal-minitest>.freeze, [">= 0"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 0"])
    s.add_dependency(%q<benchmark-ips>.freeze, [">= 0"])
  end
end
