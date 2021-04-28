require 'rspec'
require './lib/park'

describe Park do
  describe '#new' do
    it 'creates a new instance of park' do
      park = Park.new('Capitol Reef')
      expect(park).to be_a Park
    end

    it 'has a name' do
      park = Park.new('Capitol Reef')
      expect(park.name).to eq 'Capitol Reef'
    end

    it 'has trails' do
      park = Park.new('Capitol Reef')
      expect(park.trails).to eq []
    end
  end
end
