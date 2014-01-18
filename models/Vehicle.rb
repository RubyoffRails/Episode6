class Vehicle
  attr_accessor :tires, :wheels, :colour, :make, :year, :model

  def initialize (args={})
    @tires = args.fetch(:tires)
    @wheels = args.fetch(:wheels)
    @colour = args.fetch(:colour)
    @make = args.fetch(:make)
    @year = args.fetch(:year)
    @model = args.fetch(:model)
  end

  def update(args = {})
    @tires = args.fetch(:tires)
    @wheels = args.fetch(:wheels)
    @colour = args.fetch(:colour)
    @make = args.fetch(:make)
    @year = args.fetch(:year)
    @model = args.fetch(:model)
  end

end