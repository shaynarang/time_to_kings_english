# frozen_string_literal: true

# A class dedicated to the messages a user will receive in the shell.
class Message
  def self.welcome_prompt
    'Hello. Please enter a time separated by a colon.'
  end

  def self.subsequent_prompt
    "Enter another time or type 'q' to exit."
  end

  def self.time_error
    'Please enter a valid time. Ensure your time includes a colon.'
  end
end
