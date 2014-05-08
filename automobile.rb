class Automobile
  @@wheels = 4

  def initialize(color, make, year)
    @color = color
    @make = make
    @year = year
  end

  def to_s
    "My car is #{@color}, its make is #{@make}, and #{@year}"
  end

  def car
    myride = { "color" => "blue", "make" => "chevy", "year" => :"2000" }
    myride.each_value {|value| puts value }
  end
end

mycar = Automobile.new('Cyberblue', 'Chevy', 2012)
puts mycar.to_s
mycar.car
