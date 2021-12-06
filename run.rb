# frozen_string_literal: true

Dir['./lib/*.rb'].each { |file| require file }

puts StringColorer.color('cyan', Message.welcome_prompt)

loop do
  time = gets.strip
  break if time == 'q'

  if Converter.time_valid?(time)
    converter = Converter.new(time)
    english = converter.convert
    puts StringColorer.color('green', english)
    puts StringColorer.color('cyan', Message.subsequent_prompt)
  else
    puts StringColorer.color('red', Message.time_error)
  end
end
