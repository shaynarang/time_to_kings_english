# frozen_string_literal: true

require_relative '../lib/converter'

describe Converter do
  context 'quarter past' do
    let(:converter) { Converter.new('12:15') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '12')).to be true
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '15')).to be true
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '12:15')).to be true
    end

    it 'converts the hour to english' do
      expect(converter.hour_to_english).to eq('Twelve')
    end

    it 'converts the minute to english' do
      expect(converter.minute_to_english).to eq('Quarter Past')
    end

    it 'increments the hour' do
      expect(converter.incremented_hour).to eq('1')
    end

    it 'converts the full time to english' do
      expect(converter.convert).to eq('Quarter Past Twelve')
    end
  end

  context 'half past' do
    let(:converter) { Converter.new('1:30') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '1')).to be true
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '30')).to be true
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '1:30')).to be true
    end

    it 'converts the hour to english' do
      expect(converter.hour_to_english).to eq('One')
    end

    it 'converts the minute to english' do
      expect(converter.minute_to_english).to eq('Half Past')
    end

    it 'increments the hour' do
      expect(converter.incremented_hour).to eq('2')
    end

    it 'converts the full time to english' do
      expect(converter.convert).to eq('Half Past One')
    end
  end

  context 'quarter till' do
    let(:converter) { Converter.new('6:45') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '6')).to be true
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '45')).to be true
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '6:45')).to be true
    end

    it 'converts the hour to english' do
      expect(converter.hour_to_english).to eq('Six')
    end

    it 'converts the minute to english' do
      expect(converter.minute_to_english).to eq('Quarter Till')
    end

    it 'increments the hour' do
      expect(converter.incremented_hour).to eq('7')
    end

    it 'converts the full time to english' do
      expect(converter.convert).to eq('Quarter Till Seven')
    end
  end

  context "o' clock " do
    let(:converter) { Converter.new('3:00') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '3')).to be true
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '00')).to be true
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '3:00')).to be true
    end

    it 'converts the hour to english' do
      expect(converter.hour_to_english).to eq('Three')
    end

    it 'converts the minute to english' do
      expect(converter.minute_to_english).to eq("O' Clock")
    end

    it 'increments the hour' do
      expect(converter.incremented_hour).to eq('4')
    end

    it 'converts the full time to english' do
      expect(converter.convert).to eq("Three O' Clock")
    end
  end

  context 'non-quarter minute below thirty' do
    let(:converter) { Converter.new('11:11') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '11')).to be true
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '11')).to be true
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '11:11')).to be true
    end

    it 'converts the hour to english' do
      expect(converter.hour_to_english).to eq('Eleven')
    end

    it 'converts the minute to english' do
      expect(converter.minute_to_english).to eq('Eleven Past')
    end

    it 'increments the hour' do
      expect(converter.incremented_hour).to eq('12')
    end

    it 'converts the full time to english' do
      expect(converter.convert).to eq('Eleven Past Eleven')
    end
  end

  context 'non-quarter minute below thirty' do
    let(:converter) { Converter.new('9:51') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '9')).to be true
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '51')).to be true
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '9:51')).to be true
    end

    it 'converts the hour to english' do
      expect(converter.hour_to_english).to eq('Nine')
    end

    it 'converts the minute to english' do
      expect(converter.minute_to_english).to eq('Nine Till')
    end

    it 'increments the hour' do
      expect(converter.incremented_hour).to eq('10')
    end

    it 'converts the full time to english' do
      expect(converter.convert).to eq('Nine Till Ten')
    end
  end

  context 'invalid time numbers' do
    let(:converter) { Converter.new('1010') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, '1010')).to be false
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, '1010')).to be false
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, '1010')).to be false
    end
  end

  context 'invalid time words' do
    let(:converter) { Converter.new('foo') }

    it 'validates the hour' do
      expect(Converter.send(:hour_valid?, 'foo')).to be false
    end

    it 'validates the minute' do
      expect(Converter.send(:minute_valid?, 'foo')).to be false
    end

    it 'validates the full time' do
      expect(Converter.send(:time_valid?, 'foo')).to be false
    end
  end
end
