require 'bundler'
Bundler.require

run Opal::Sprockets::Server.new { |s|
  s.main = 'application'
  s.append_path 'app'
}
