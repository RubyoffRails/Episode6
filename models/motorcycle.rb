require_relative 'vehicle'

class Motorcycle < Vehicle

  @@vehicles = []

  def self.wheels
    @wheels = 2
  end

  def initialize
    add_to_vehicles
  end

  def add_to_vehicles
    @@vehicles << self
  end

end
