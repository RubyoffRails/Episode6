require_relative 'vehicle'
class Motorcycle < Vehicle
  def initialize
    add_vehicles(self)
  end

  def self.wheels
    2
  end
end
