1. switch to repo
2. `git checkout -b edge 1_0_0`
3. update VERSION to .lap22
3. remove `source ENV['HYPER_DEV_GEM_SOURCE'] if ENV['HYPER_DEV_GEM_SOURCE']` from Gemfile
4. set up rake file: 
```ruby
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

namespace :spec do
  task :prepare do
    sh %{bundle update}
    sh %{cd spec/test_app; bundle update} # may need ;bundle exec rails db:setup as well
  end
end

task :default => :spec
```
5. `rake spec:prepare` **NO BUNDLE EXEC, since the prepare will do the updates**
6. `bundle exec rake`
6. delete the `dciy_prepare.sh` and `dciy_run.sh` files and replace `dciy_toml` with
```ini
[dciy.commands]
prepare = ["rake spec:prepare"]
cibuild = ["bundle exec rake"]
```
8. `git commit -am "setup edge"`
8. `git push origin edge`
8. `gem build ...gemspec`
5. `gem push ...gem`
6. `gem owner --add jan@kursator.de ...`

