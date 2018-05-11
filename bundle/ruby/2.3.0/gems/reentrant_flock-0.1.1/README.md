# ReentrantFlock

A reentrant/recursive flock.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reentrant_flock'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reentrant_flock

## Usage

```ruby
require 'reentrant_flock'

File.open('/tmp/lock', File::RDWR | File::CREAT) do |fp|
  ReentrantFlock.synchronize(fp, File::LOCK_EX) do
    ReentrantFlock.synchronize(fp, File::LOCK_EX) do
      # Not blocked by myself
    end
  end
end
```

```ruby
require 'reentrant_flock'

def with_rlock(&block)
  File.open('/tmp/lock', File::RDWR | File::CREAT) do |fp|
    ReentrantFlock.synchronize(fp, File::LOCK_EX, &block)
  end
end

with_rlock do
  with_rlock do
    # Not blocked by myself
  end
end
```

`ReentrantFlock.synchronize` would raise `ReentrantFlock::AlreadyLocked` if `File::LOCK_NB` is given and already locked by somebody else.

See [File#flock](https://ruby-doc.org/core-2.2.0/File.html#method-i-flock) for flags.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sonots/reentrant_flock.
