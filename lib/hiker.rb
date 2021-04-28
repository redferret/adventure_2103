class Hiker
  attr_reader :name, :experience_level, :snacks, :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = Hash.new(0)
    @parks_visited = []
  end

  def pack(snack_name, quantity)
    @snacks[snack_name] += quantity
  end

  def visit(park)
    @parks_visited << park
  end

  def favorite_snack
    @snacks.max_by do |snack, count|
      count
    end.first
  end
end
