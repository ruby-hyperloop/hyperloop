# -*- encoding: utf-8 -*-
# stub: mutations 0.8.2 ruby lib

Gem::Specification.new do |s|
  s.name = "mutations".freeze
  s.version = "0.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonathan Novak".freeze]
  s.date = "2018-05-02"
  s.description = "Compose your business logic into commands that sanitize and validate input.".freeze
  s.email = "jnovak@gmail.com".freeze
  s.homepage = "http://github.com/cypriss/mutations".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Compose your business logic into commands that sanitize and validate input.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 4"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
