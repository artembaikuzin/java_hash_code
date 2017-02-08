# JavaHashCode

Computes hash for given string with Java [hashCode algorithm](https://en.wikipedia.org/wiki/Java_hashCode())

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'java_hash_code'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install java_hash_code

## Usage

```ruby
require 'java_hash_code'

JavaHashCode.compute('1234 ABC abc')     # returns 892228006
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ybinzu/java_hash_code.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
