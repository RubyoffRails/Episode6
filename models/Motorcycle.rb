require_relative('Vehicle.rb')
class Motorcycle < Vehicle

attr_accessor :tires

  def initialize
    @tires = 2
  end

end