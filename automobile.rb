class Automobile
  attr_accessor :color, :make, :model, :year
  def self.wheels
    4
  end

  def initialize(params)
    @color = params[:color]
    @make  = params[:make]
    @model = params[:model]
    @year  = params[:year]
  end
end

puts Automobile.wheels
my_car = Automobile.new(color: "Green", make: "Honda", model: "Civic", year: 2014)
puts my_car.color
puts my_car.make
puts my_car.model
puts my_car.year
