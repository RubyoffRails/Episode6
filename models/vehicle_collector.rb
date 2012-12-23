class VehicleCollector

  @@vehicles = []
  
  attr_reader :vehicle

  def self.show_vehicles
    @@vehicles.map { |vehicle| vehicle.name }
  end

  def initialize(vehicle)
    @vehicle = vehicle
    add_vehicles
  end

  def add_vehicles
    @@vehicles << vehicle
  end
end
