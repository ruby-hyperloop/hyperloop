#! /usr/bin/env ruby
require 'rake'

task :default => :test

task :test do
	FileUtils.cd 'spec' do
		sh 'rspec css_spec.rb html_spec.rb --backtrace --color --format doc'
	end
end
