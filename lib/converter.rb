# frozen_string_literal: true

# Humanize is a library that converts a number to a word.
require 'humanize'

# Class for converting a colon-separated time string to the King's English.
class Converter
  def initialize(time)
    time = time.split(':')
    @hour = time[0]
    @minute = time[-1]
  end

  # Ensure hour provided is within range.
  def self.hour_valid?(hour)
    (0o1..12).map(&:to_s).include?(hour)
  end

  # Ensure minute provided is within range and pad with zero.
  def self.minute_valid?(minute)
    (0o0..59).map(&:to_s).map! { |n| n.rjust(2, '0') }.include?(minute)
  end

  # Check for presence, inclusion of colon, and validity of hour and minute.
  def self.time_valid?(time)
    return false if time.empty?

    return false if time.count(':') != 1

    hour = time.split(':')[0]
    return false unless hour_valid?(hour)

    minute = time.split(':')[-1]
    return false unless minute_valid?(minute)

    true
  end

  # Convert hour to English.
  def hour_to_english
    # A one-liner alternative to this method is: @hour.to_i.humanize.capitalize
    # but for demonstration purposes...
    numbers = (1..12).map(&:to_s).to_a
    terms = %w[One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve]
    # Example using hash formulation.
    hash = Hash[numbers.zip(terms)]
    hash[@hour]
  end

  # Convert minute to english for those that do not fall on 00, 15, 30, or 45.
  def non_quarter_minute_english
    minute = @minute.to_i
    if minute > 30 && minute != 45
      minute = 60 - minute
      text = 'Till'
    elsif minute.positive? && minute < 30 && minute != 15
      text = 'Past'
    else
      return nil
    end
    # The humanize gem removes the need to map non quarter minute values to words.
    "#{minute.humanize.capitalize} #{text}"
  end

  # Convert minute to English.
  def minute_to_english
    # If minute does not land on 00, 15, 30, or 45.
    return non_quarter_minute_english if non_quarter_minute_english

    numbers = %w[00 15 30 45]
    terms = ["O' Clock", 'Quarter Past', 'Half Past', 'Quarter Till']
    # Example using array with index search.
    index = numbers.find_index(@minute)
    terms[index]
  end

  # Increment hour for Till scenarios.
  def incremented_hour
    @hour == '12' ? '1' : @hour.next
  end

  # Formulate King's English.
  def convert
    @hour = incremented_hour if minute_to_english.end_with?('Till')
    if minute_to_english == "O' Clock"
      "#{hour_to_english} #{minute_to_english}"
    else
      "#{minute_to_english} #{hour_to_english}"
    end
  end
end
