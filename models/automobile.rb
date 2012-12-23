require_relative 'vehicle'
require_relative 'vehicle_collector'
class Automobile < Vehicle

  attr_reader :color, :make, :model, :year, :collector

  def initialize(options = {})
    @color = options[:color]
    @make = options[:make]
    @model = options[:model]
    @year = options[:year]
    @collector = VehicleCollector.new(self)
  end
end
