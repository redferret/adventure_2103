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
end
