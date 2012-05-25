require_relative './vehicle'

class Motorcycle < Vehicle

  def initialize(hash)
    Vehicle.add(hash)
  end
  
  def self.wheels
    2
  end
  
end
