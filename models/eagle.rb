class Vehicle

  @@count = 0
  @@vehicles = []
  #attr_reader :vehicles
  def initialize
    @@count += 1
    @vehicles = []
  end

  def self.count
    @@count
  end

   def self.count=(value)
    @@count = value
  end

  def self.search(args)

    results = vehicles
    args.each do |key, value|
      results.select!{|vehicle| vehicle.send(key) == value.to_sym}
    end
    results

  end

  def self.register(automobile)
    vehicles << automobile
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
    Vehicle.register(self)
    super()
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


8.times { Vehicle.new }
4.times { Motorcycle.new }
auto = Automobile.new(model: 'Mustang', color: 'Red', make: 'Ford', year: 2007)
Automobile.new model: :mazda, color: :red, make: 'Civic', year: 2012
Automobile.new model: :toyota, color: :red, make: 'Corolla', year: 2010
Automobile.new model: :honda, color: :blue, make: 'Civic', year: 2013
Automobile.new model: :mazda, color: :blue, make: 'Accord', year: 2003

puts Vehicle.count
puts Vehicle.search(colour: "blue", model: "honda").inspect
