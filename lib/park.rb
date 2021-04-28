class Park
  attr_reader :name, :trails

  def initialize(name)
    @name = name
    @trails = []
  end

  def add_trail(trail)
    @trails << trail
  end

  def trails_shorter_than(miles)
    @trails.find_all do |trail|
      trail.length < miles
    end
  end

  def hikable_miles
    @trails.sum(&:length)
  end

  def trails_by_level
  end
end
