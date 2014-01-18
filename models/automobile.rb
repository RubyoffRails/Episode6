require_relative('Vehicle.rb')
class Automobile < Vehicle
  attr_accessor :wheels, :carspecifications, :colour, :make, :year

  def initialize(args = {})
    super(args)
  end

  def update(args = {})
    super(args)
  end
end