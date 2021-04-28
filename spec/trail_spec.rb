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
  end
end
