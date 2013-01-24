class Vehicle
  attr_accessor :color, :make, :model, :year

  def initialize(options = {color: nil, make: nil, model: nil, year: nil})
    @color = options.fetch(:color)
    @make = options.fetch(:make)
    @model = options.fetch(:model)
    @year = options.fetch(:year)
    end

  def self.wheels
    4
  end
end