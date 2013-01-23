require_relative './vehicle'

class Auto < Vehicle
  attr_accessor :color, :make, :model, :year

  def initialize(options = {})
    @color = options.fetch(:color)
    @make = options.fetch(:make)
    @model = options.fetch(:model)
    @year = options.fetch(:year)
  end
end