require_relative 'vehicle'
class Automobile < Vehicle

  attr_reader :color, :make, :model, :year, :type

  def initialize(options = {})
    @color = options[:color]
    @make = options[:make]
    @model = options[:model]
    @year = options[:year]
    @type = Vehicle.new(self)
  end
end
