class Vehicle

@@vehicle = [] #can be used anywhere. 

  attr_reader :color, :make, :model, :year, :model 
  def initialize(hash={})
      @@vehicle << self
      @color = hash.fetch(:color)
      @make = hash.fetch(:make)
      @model = hash.fetch(:model)
      @year = hash.fetch(:year)
    end

  def self.wheels
    @wheels = nil
  end

  def self.vehicles
    @@vehicle
  end

  def self.favorite_car
    @@vehicle.select { |i| i.color == 'Blue' && i.model == 'Accord'} #select returns the ary that's true to the conditon
  end

  def to_s
    "#{color}, #{make}, #{model}, #{year}" 
  end
end
