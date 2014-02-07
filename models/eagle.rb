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

  def self.wheels
    2
  end
end


class Automobile < Vehicle
  @@auto = []
  attr_accessor :color, :make, :model, :year
  def self.wheels
    4
  end

  def initialize(args)
    @color = args[:color]
    @make = args[:make]
    @model = args[:model]
    @year = args[:year]
    super()
  end

  def self.build(args)
    auto = Automobile.build(args)
    @@vehicles << auto
    auto
  end

  def update(new_args)
    @color = new_args[:color] if new_args[:color]
    @make = new_args[:make] if new_args[:make]
    @model = new_args[:model] if new_args[:model]
    @year = new_args[:year] if new_args[:year]
  end

  def all_autos
    @@auto
  end

  def self.count
    @@auto.count
  end
end

class Motorcycle < Vehicle
end
