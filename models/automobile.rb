class Automobile
  def initialize(color, make, model, year)
    @color = color
    @make = make
    @model = model
    @year = year
  end

  def number_of_wheels
    number_of_wheels = 4
  end

  automobile = {}
  automobile[:color] = "Red"
  automobile[:make] = "SUV"
  automobile[:model] = "Honda"
  automobile[:year] = 2008

  Car = Struct.new(:automobile, :method)
  car = Car.new( {color: "Blue", make: "BMW", model: "sedan", year: 2013} )
end






# Panda Assignment
# ----------------

# 1. Create a class definition for an automobile
# 2. The class should have the following characteristics:
#   * Should have a class method that returns the number of wheels it has
#   * Should have instance variables for color, make, model, and year
#   * I should be able to pass in a hash of color, make, model, and year to the class to update its variables
