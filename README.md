[![Gem Version](https://badge.fury.io/rb/rename_key.svg)](https://badge.fury.io/rb/rename_key)　[![Build Status](https://travis-ci.org/tkhrsn/rename_key.svg?branch=master)](https://travis-ci.org/tkhrsn/rename_key) [![Coverage Status](https://coveralls.io/repos/github/tkhrsn/rename_key/badge.svg?branch=master)](https://coveralls.io/github/tkhrsn/rename_key?branch=master) [![Code Climate](https://codeclimate.com/github/tkhrsn/rename_key/badges/gpa.svg)](https://codeclimate.com/github/tkhrsn/rename_key) [![Dependency Status](https://gemnasium.com/badges/github.com/tkhrsn/rename_key.svg)](https://gemnasium.com/github.com/tkhrsn/rename_key)

# Hash#rename_key

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rename_key'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rename_key

## Usage

```ruby
require 'rename_key'

{ foo: "foo", bar: "bar", baz: "baz" }.rename_key({ foo: :Foo, bar: :Bar })

# => { Foo: "foo", Bar: "bar", baz: "baz" }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rename_key.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
