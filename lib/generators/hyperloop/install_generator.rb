require 'rails/generators'
module Hyperloop
  class InstallGenerator < Rails::Generators::Base

    def inject_react_file_js
      append_file 'app/assets/javascripts/application.js' do
        <<-'JS'
//= require jquery
//= require jquery_ujs
//= require hyperloop-loader
        JS
      end
    end

    def inject_engine_to_routes
        route 'mount Hyperloop::Engine => \'/hyperloop\''
    end

    def create_hyperloop_directories
      create_file 'app/hyperloop/components/.keep', ''
      create_file 'app/hyperloop/operations/.keep', ''
      create_file 'app/hyperloop/stores/.keep', ''
      create_file 'app/hyperloop/models/.keep', ''
    end

    def create_policies_directory
      create_file 'app/policies/application_policy.rb', <<-RUBY
# app/policies/application_policy

# Policies regulate access to your public models
# The following policy will open up full access (but only in development)
# The policy system is very flexible and powerful.  See the documentation
# for complete details.
class Hyperloop::ApplicationPolicy
  # Allow any session to connect:
  always_allow_connection
  # Send all attributes from all public models
  regulate_all_broadcasts { |policy| policy.send_all }
  # Allow all changes to public models
  allow_change(to: :all, on: [:create, :update, :destroy]) { true }
end unless Rails.env.production?
        RUBY
    end

    def create_initializer
      create_file 'config/initializers/hyperloop.rb', <<-RUBY
# config/initializers/hyperloop.rb
# If you are not using ActionCable, see http://ruby-hyperloop.io/docs/models/configuring-transport/
Hyperloop.configuration do |config|
  config.transport = :action_cable
  config.import 'reactrb/auto-import'
end

        RUBY
    end

    def add_gems
    end
  end
end
