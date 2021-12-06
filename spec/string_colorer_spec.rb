# frozen_string_literal: true

require_relative '../lib/string_colorer'

describe StringColorer do
  it 'returns a string for cyan' do
    expect(StringColorer.color('cyan', 'foo')).to eq("\e[36mfoo\e[0m")
  end

  it 'returns a string for red' do
    expect(StringColorer.color('red', 'foo')).to eq("\e[31mfoo\e[0m")
  end

  it 'returns a string for green' do
    expect(StringColorer.color('green', 'foo')).to eq("\e[32mfoo\e[0m")
  end
end
