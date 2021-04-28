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

  describe '#visit' do
    it 'lets hiker visit a park and records it in a list' do
      hiker = Hiker.new('Dora', :moderate)

      park1 = instance_double('Park')
      park2 = instance_double('Park')

      hiker.visit(park1)
      hiker.visit(park2)

      expected_visited = [park1, park2]

      expect(hiker.parks_visited).to eq expected_visited
    end
  end

  describe '#favorite_snack' do
    it 'returns a favorite snack based on max quantity' do
      hiker = Hiker.new('Dora', :moderate)

      hiker.pack('water', 1)
      hiker.pack('trail mix', 3)
      hiker.pack('apple', 2)
      hiker.pack('beef', 112)

      expected = 'beef'

      expect(hiker.favorite_snack).to eq expected
    end
  end
end
