class Automobile
  @@wheels = 4
  attr_accessor :color, :make, :model, :year

  def initialize(color, make, model, year)
    @color = hash.fetch(:color, '')
    @make = hash.fetch(:make, '')
    @model = hash.fetch(:model, '')
    @year = hash.fetch(:year, '')

  end

  def to_s
    "My car is #{@color}, its make and model is #{@make} and #{@model}, and the year is #{@year}."
  end
end

mycar = Automobile.new([color: 'Cyberblue', make: 'Chevy', model: 'Volt', year:  '2012'])
puts mycar
