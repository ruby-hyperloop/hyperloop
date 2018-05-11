# Opal: ActiveSupport

_@dhh [6:44 PM - Oct 23, 2012](https://twitter.com/dhh/status/260783823254601728):_
> @AstonJ But it's vanilla Ruby. It's not like you have ActiveSupport available, which somewhat defeats it for me.


## Installation

Add this line to your application's Gemfile:

    gem 'opal-activesupport'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install opal-activesupport


## Usage

Inside your `application.js.rb`:

```ruby
require 'active_support'                 # to require the whole active support lib
require 'active_support/core_ext'        # require only the corelib extensions
require 'active_support/core_ext/string' # require only the corelib extensions
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
