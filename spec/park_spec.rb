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

  describe '#trails_shorter_than' do
    it 'returns a list of trails shorter than the amount given' do
      park = Park.new('Capitol Reef')

      trail1 = instance_double('Trail', length: 2.2)
      trail2 = instance_double('Trail', length: 3.5)
      trail3 = instance_double('Trail', length: 1.2)
      trail4 = instance_double('Trail', length: 5.5)

      park.add_trail(trail1)
      park.add_trail(trail2)
      park.add_trail(trail3)
      park.add_trail(trail4)

      expected_trails = [trail1, trail3]
      results = park.trails_shorter_than(3.0)

      expect(results).to eq expected_trails
    end
  end

  describe '#hikable_miles' do
    it 'returns the sum of all the trails\' miles' do
      park = Park.new('Capitol Reef')

      trail1 = instance_double('Trail', length: 2.2)
      trail2 = instance_double('Trail', length: 3.5)
      trail3 = instance_double('Trail', length: 1.2)
      trail4 = instance_double('Trail', length: 5.5)

      park.add_trail(trail1)
      park.add_trail(trail2)
      park.add_trail(trail3)
      park.add_trail(trail4)

      expected_length = 12.4

      expect(park.hikable_miles).to eq expected_length
    end
  end
end
