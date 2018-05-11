source 'https://rubygems.org'
gemspec

opal_path = File.expand_path('../opal')
if File.exist? opal_path
  gem 'opal', path: opal_path
else
  gem 'opal', github: 'opal/opal'
end

rack_version      = ENV['RACK_VERSION']
sprockets_version = ENV['SPROCKETS_VERSION']

gem 'rack', rack_version if rack_version
gem 'sprockets', sprockets_version if sprockets_version
