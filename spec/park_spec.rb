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

  describe '#add_trail' do
    it 'adds a trail to the park' do
      park = Park.new('Capitol Reef')

      trail1 = instance_double('Trail', name: 'Grand Wash')
      trail2 = instance_double('Trail', name: 'Cohab Canyon')

      park.add_trail(trail1)
      park.add_trail(trail2)

      expected_trails = [trail1, trail2]

      expect(park.trails).to eq expected_trails
    end
  end
end
