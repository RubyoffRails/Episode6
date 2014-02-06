class Vehicle

  @@vehicles = []
  def initialize

  end

  def self.count
    @@vehicles.count
  end

  def self.search(args)

    results = @@vehicles
    args.each do |key, value|
      results.select!{|vehicle| vehicle.send(key) == value.to_sym}
    end
    results

  end

  def self.register(automobile)
    @@vehicles << automobile
  end

  def self.wheels
    2
  end
end


class Automobile < Vehicle
  @@automobiles = []
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

  def self.build_car(args)
    auto = Automobile.new(args)
    @@vehicles << auto
    auto
  end

end

class Motorcycle < Vehicle
end

auto = Automobile.new(model: 'Mustang', color: 'Red', make: 'Ford', year: 2007)
Automobile.new model: :mazda, color: :red, make: 'Civic', year: 2012
Automobile.new model: :toyota, color: :red, make: 'Corolla', year: 2010
Automobile.new model: :honda, color: :blue, make: 'Civic', year: 2013
Automobile.new model: :mazda, color: :blue, make: 'Accord', year: 2003

puts Vehicle.count
puts Vehicle.search(color: "blue", model: "honda").inspect
