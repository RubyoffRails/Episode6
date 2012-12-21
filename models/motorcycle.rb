require_relative 'vehicle'
class Motorcycle < Vehicle
  def initialize
    add_to_vehicles
  end

  def self.wheels
    2
  end

  def add_to_vehicles
    @@vehicles << self
  end
end
