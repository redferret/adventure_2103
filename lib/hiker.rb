class Hiker
  attr_reader :name, :experience_level, :snacks, :parks_visited

  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @snacks = Hash.new(0)
  end

  def pack(snack_name, quantity)
    @snacks[snack_name] += quantity
  end

  def visit(park)
  end
end
