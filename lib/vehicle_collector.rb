module VehicleCollector

  @@vehicles = []

  def self.show_vehicles
    @@vehicles.map { |vehicle| vehicle.name }
  end

  def self.add_vehicles(vehicle)
    @@vehicles << vehicle
  end

  def self.get
    @@vehicles
  end

  def self.reset
    @@vehicles.clear
  end
end
