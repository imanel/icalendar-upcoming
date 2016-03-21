require "icalendar"
require "icalendar/recurrence"
require "icalendar/upcoming/version"

module Icalendar
  module Upcoming
    def upcoming_events(num_days: 7, start_date: Date.today, end_date: nil)
      upcoming = []
      end_date ||= start_date + num_days
      list = events.select { |event| !event.occurrences_between(start_date, end_date).empty? }
      list.map do |event|
        event.occurrences_between(start_date, end_date).each do |date|
          if event.dtstart.is_a?(Icalendar::Values::Date)
            starts = date.start_time.to_date
            ends = date.end_time.to_date
          else
            starts = date.start_time.to_datetime
            ends = date.end_time.to_datetime
          end
          upcoming << {
            event: event,
            start_time: starts,
            end_time: ends
          }
        end
      end
      upcoming.sort { |a,b| a[:start_time] <=> b[:start_time] }
    end
  end

  class Calendar
    include Icalendar::Upcoming
  end
end
