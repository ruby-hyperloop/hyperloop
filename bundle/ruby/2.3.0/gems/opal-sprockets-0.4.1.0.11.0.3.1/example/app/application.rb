require 'opal'
require 'user'

module MyApp
  class Application
    def initialize
      @user = User.new('Bill')
      @user.authenticated?
    rescue
      @user = User.new('Bob')
      @user.authenticated?
      p @user
    end
  end
end

$app = MyApp::Application.new

p $app
puts "Done!"
