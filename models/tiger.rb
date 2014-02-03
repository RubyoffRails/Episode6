class Vehicle
  def tires
  end
end

class Automobile < Vehicle

  attr_accessor :color, :make, :model, :year
  def self.wheels?
    4
  end

  def initialize(args)
    @color = args[:color]
    @make = args[:make]
    @model = args[:model]
    @year = args[:year]
  end
end

class Motorcycle < Vehicle
  def tires
    return 2
  end
end
