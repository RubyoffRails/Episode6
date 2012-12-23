require './lib/vehicle_collector'
class Vehicle
  include VehicleCollector

  def initialize(vehicle)
    VehicleCollector.add_vehicles(vehicle)
  end

  def self.blue_honda_accords
    automobiles = @@vehicles.select { |vehicle| vehicle.class == Automobile }
    automobiles.keep_if do |automobile| 
      automobile.color == 'blue' && 
      automobile.make  == 'Honda' && 
      automobile.model == 'Accord'
    end
  end

  def self.wheels
    4
  end
end
