class Vehicle
  attr_accessor :color, :make, :model, :year

  @@vehicles = []

  def self.vehicles
    @@vehicles
  end

  def self.find_blue_honda_accords
    @@vehicles.select do |vehicle|
      vehicle.color == 'Blue' &&
      vehicle.make == 'Honda' &&
      vehicle.model == 'Accord'
    end
  end

  def initialize
    @@vehicles.push self
  end

  def update(values={})
    self.color = values[:color]
    self.make  = values[:make]
    self.model = values[:model]
    self.year  = values[:year]
  end

end
