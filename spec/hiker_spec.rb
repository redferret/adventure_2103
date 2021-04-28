require 'rspec'
require './lib/hiker'

describe Hiker do
  describe '#new' do
    it 'creates a new Hiker' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker).to be_a Hiker
    end

    it 'has attributes' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker.name).to eq 'Dora'
      expect(hiker.experience_level).to eq(:moderate)
    end

    it 'has snacks' do
      hiker = Hiker.new('Dora', :moderate)
      expect(hiker.snacks).to eq({})
    end
  end

  describe '#pack' do
    it 'packs a snack for this hiker' do
      hiker = Hiker.new('Dora', :moderate)

      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)
      expected_snacks = {
        'water'=> 1,
        'trail mix'=> 3
      }

      expect(hiker.snacks).to eq expected_snacks

      hiker.pack('water', 1)
      expected_snacks = {
        'water'=> 2,
        'trail mix'=> 3
      }

      expect(hiker.snacks).to eq expected_snacks
    end
  end
end
