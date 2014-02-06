class Vehicle
  @@count = 0
  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end

   def self.count=(value)
    @@count = value
  end

  def self.wheels
    2
  end
end

class Automobile < Vehicle

  attr_accessor :color, :make, :model, :year
  def self.wheels
    4
  end

  def initialize(args)
    @color = args[:color]
    @make = args[:make]
    @model = args[:model]
    @year = args[:year]
  end

  def update(new_args)
    @color = new_args[:color] if new_args[:color]
    @make = new_args[:make] if new_args[:make]
    @model = new_args[:model] if new_args[:model]
    @year = new_args[:year] if new_args[:year]
  end
end

class Motorcycle < Vehicle
end

#v = Vehicle.new

8.times { Vehicle.new }
auto = Automobile.new(color: 'Red', make: 'Ford', model: 'Mustang', year: 2007)
4.times { Motorcycle.new }
puts Vehicle.count



