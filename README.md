# Torblocker

Torblocker is a simple API to block unwanted access by Tor browser and untrusted IPs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'torblocker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install torblocker

## Usage

Get your token from Torblocker (https://torblocker.com).

If you want to check if an IP is not from Tor browser or our blacklist:
```ruby
Torblocker.trusted?(ip_to_be_checked_in_string, your_token)
# This returns true if the IP is not from Tor browser or our blacklist.
```

```ruby
Torblocker.untrusted?(ip_to_be_checked_in_string, your_token)
# This returns true if the IP is from Tor browser or our blacklist.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chienomi/torblocker.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
