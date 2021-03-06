# MeserOngkir

[![Gem Version](https://badge.fury.io/rb/meser_ongkir.svg)](https://badge.fury.io/rb/meser_ongkir) [![Build Status](https://travis-ci.org/yogahp/meser_ongkir.svg?branch=master)](https://travis-ci.org/yogahp/meser_ongkir) [![Maintainability](https://api.codeclimate.com/v1/badges/832c619e0879c862e148/maintainability)](https://codeclimate.com/github/yogahp/meser_ongkir/maintainability) [![Inch CI](http://inch-ci.org/github/yogahp/meser_ongkir.svg)](http://inch-ci.org/github/yogahp/meser_ongkir)

MeserOngkir is a clean, powerful, customizable and sophisticated shipping cost plugin for Rails 5+ based on [RajaOngkir.com](https://rajaongkir.com)

## Getting started

Add this line to your application's Gemfile:

```ruby
gem 'meser_ongkir'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install meser_ongkir
    
Get API Key from [https://rajaongkir.com/](https://rajaongkir.com/) and place it in your `.env` as:
```ruby
export MESER_ONGKIR_API_KEY=<your-api-key>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yogahp/meser_ongkir. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MeserOngkir project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/yogahp/meser_ongkir/blob/master/CODE_OF_CONDUCT.md).
