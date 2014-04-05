class Vehicle
  attr_accessor :color, :make, :model, :year, :wheel
##
# Initialize new vehicle; if no arguments are provided, default to "None"
  def initialize(args)
    @color = args[:color] ||= "None"
    @make = args[:make] ||= "None"
    @model = args[:model] ||= "None"
    @year = args[:year] ||= "None"
  end
##
# Such wheels, so round
# May have been overzealous
#
# Could have done:
# def number_of_wheels
#    4
# end
#
# But wanted to mess with arguments
##
  def self.number_of_wheels(wheels)
    @wheel = wheels
    return @wheel
  end
end


class Automobile < Vehicle
  Automobile.number_of_wheels(4)
end


##
# Doesn't have a redefined method, but should still give us correct wheels.
class Motorcycle < Vehicle
  Motorcycle.number_of_wheels(2)
end