# frozen_string_literal: true

require_relative '../lib/message'

describe Message do
  let(:message) { Message }

  it 'returns a welcome prompt' do
    expected = 'Hello. Please enter a time separated by a colon.'
    expect(message.welcome_prompt).to eq(expected)
  end

  it 'returns an subsequent prompt' do
    expected = "Enter another time or type 'q' to exit."
    expect(message.subsequent_prompt).to eq(expected)
  end

  it 'returns a time error' do
    expected = 'Please enter a valid time. Ensure your time includes a colon.'
    expect(message.time_error).to eq(expected)
  end
end
