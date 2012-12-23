require_relative 'vehicle'
class Automobile < Vehicle

  attr_reader :color, :make, :model, :year

  def initialize(options = {})
    @color = options[:color]
    @make = options[:make]
    @model = options[:model]
    @year = options[:year]
    add_vehicles(self)
  end
end
