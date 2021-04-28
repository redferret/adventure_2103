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
    levels = [:easy, :moderate, :strenuous]

    levels.each_with_object({}) do |level, hash|
      hash[level] = find_trails_by_level(level)
    end
  end

  def find_trails_by_level(level)
    @trails.find_all do |trail|
      trail.level == level
    end
  end
end
