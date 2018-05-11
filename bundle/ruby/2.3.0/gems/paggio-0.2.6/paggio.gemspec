Gem::Specification.new {|s|
	s.name     = 'paggio'
	s.version  = '0.2.6'
	s.author   = 'meh.'
	s.email    = 'meh@schizofreni.co'
	s.homepage = 'http://github.com/meh/paggio'
	s.platform = Gem::Platform::RUBY
	s.summary  = 'Ruby, HTML and CSS at war.'
  s.license  = 'WTFPL'

	s.files         = `git ls-files`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.require_paths = ['lib']
}
