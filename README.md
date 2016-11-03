# SlashForce

`SlashForce` is a simple gem for `Ruby on Rails` to append trailing slash to paths.

<img src="https://github.com/shotat/slash-force/blob/images/slash-logo.png" width=400px />

## example

- `http://example.com` is redirected to `http://example.com/`
- `http://example.com/test?foo=1` is redirected to `http://example.com/test/?foo=1`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slash_force'
```

## Usage

1. include `SlashForce` module.
2. define `before_action :append_trailing_slash` callback.

```ruby
class ApplicationController
  include SlashForce

  before_action :append_trailing_slash, only: [:show]

  ...
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shotat/slash_force. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

