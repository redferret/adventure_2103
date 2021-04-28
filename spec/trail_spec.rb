require 'rspec'

require './lib/trail'

describe Trail do
  describe '#new' do
    it 'tests that Trail exists' do
      trail = Trail.new({
        name: 'Grand Wash',
        length: '2.2 miles',
        level: :easy
      })

      expect(trail).to be_a Trail
    end

    it 'has attributes' do
      trail = Trail.new({
        name: 'Grand Wash',
        length: '2.2 miles',
        level: :easy
      })

      expect(trail.name).to eq 'Grand Wash'
      expect(trail.length).to eq 2.2
      expect(trail.level).to eq(:easy)
    end
  end
end
