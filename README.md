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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/imanel/icalendar-upcoming.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

