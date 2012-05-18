require_relative 'vehicle'

class Automobile < Vehicle

  @@vehicles = [] 

  attr_accessor :color, :make, :year
  
  # re-creating the create method as per ActiveRecord to use in tests
  def self.create(args)
    instance = self.new(args[:color], args[:make], args[:year])
  end

  def initialize(color, make, year)
    @color = color
    @make = make
    @year = year
    add_to_vehicles
  end
  
  def add_to_vehicles
    @@vehicles << self
  end

  def update(args)
    self.color = args[:color]
    self.make = args[:make]
    self.year = args[:year]
  end

  # isn't this kind of redundant since the == method already exists?
  def ==(other)
    if self.attributes == other.attributes
      return true 
    end
  end

  def attributes
   attributes = []
   attributes << self.color
   attributes << self.make 
   attributes << self.year
   attributes
  end
  
end
