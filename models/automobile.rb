require_relative 'vehicle'

class Automobile < Vehicle
  attr_accessor :color, :make, :model, :year

  def self.num_wheels
    4
  end

end
