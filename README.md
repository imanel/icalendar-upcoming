# Icalendar::Upcoming

Show upcoming events from Icalendar.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'icalendar-upcoming'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install icalendar-upcoming

## Usage

On instance of [icalendar](https://github.com/icalendar/icalendar) Calendar:

```ruby
calendar.upcoming_events() #=> { event: Icalendar::Event, start_time: Date or DateTime, end_time: Date or DateTime }
```

Available options:

- `start_date`: date of first event range. Default: `Date.today`
- `end_date`: date of last event range. Default: `nil`
- `num_days`: number of days to calculate end date. Default: `7`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/imanel/icalendar-upcoming.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

