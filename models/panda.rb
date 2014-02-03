class Automobile
  attr_accessor :color, :make, :model, :year
  def self.wheels?
    4
  end

  def initialize(args)
    @color = args[:color]
    @make = args[:color]
    @model = args[:color]
    @year = args[:color]
  end
end
