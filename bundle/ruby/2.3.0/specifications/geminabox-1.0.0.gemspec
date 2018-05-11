# -*- encoding: utf-8 -*-
# stub: geminabox 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "geminabox".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "source_code_uri" => "https://github.com/geminabox/geminabox" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tom Lea".freeze, "Jack Foy".freeze, "Rob Nichols".freeze, "Naotoshi Seo".freeze]
  s.date = "2018-02-08"
  s.description = "A sinatra based gem hosting app, with client side gem push style functionality.".freeze
  s.email = ["contrib@tomlea.co.uk".freeze, "jack@foys.net".freeze, "rob@undervale.co.uk".freeze, "sonots@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://tomlea.co.uk/p/gem-in-a-box".freeze
  s.licenses = ["MIT-LICENSE".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Really simple rubygem hosting".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>.freeze, [">= 1.2.7"])
      s.add_runtime_dependency(%q<builder>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httpclient>.freeze, [">= 2.2.7"])
      s.add_runtime_dependency(%q<nesty>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<reentrant_flock>.freeze, [">= 0"])
    else
      s.add_dependency(%q<sinatra>.freeze, [">= 1.2.7"])
      s.add_dependency(%q<builder>.freeze, [">= 0"])
      s.add_dependency(%q<httpclient>.freeze, [">= 2.2.7"])
      s.add_dependency(%q<nesty>.freeze, [">= 0"])
      s.add_dependency(%q<faraday>.freeze, [">= 0"])
      s.add_dependency(%q<reentrant_flock>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>.freeze, [">= 1.2.7"])
    s.add_dependency(%q<builder>.freeze, [">= 0"])
    s.add_dependency(%q<httpclient>.freeze, [">= 2.2.7"])
    s.add_dependency(%q<nesty>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, [">= 0"])
    s.add_dependency(%q<reentrant_flock>.freeze, [">= 0"])
  end
end
