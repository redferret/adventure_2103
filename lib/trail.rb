class Trail
  attr_reader :name, :length, :level
  def initialize(attrs)
    @name = attrs[:name]
    @length = convert_to_float(attrs[:length])
    @level = attrs[:level]
  end

  private
  def convert_to_float(length)
    split = length.split(' ')
    @length = split.first.to_f
  end
end
