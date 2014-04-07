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
# If I want to update the Vehicle, so shall it be
  def updater(args)
    @color = args.fetch(:color) if args[:color]
    @make = args.fetch(:make) if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year = args.fetch(:year).to_s if args[:year]
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