class Vehicle
  @@wheels = 4
  attr_accessor :color, :make, :model
  
  def initialize(color, make, model)
    @color = color
    @make = make
    @model = model
  end

  def update(hash)
      unless hash[:color].nil?
        @color = hash[:color]
      end
      unless hash[:make].nil?
        @make = hash[:make]
      end
      unless hash[:model].nil?
        @model = hash[:model]
      end
  end

  def wheels
    "This vehicle has #{@@wheels} wheels."
  end
end

class Automobile < Vehicle

end

class Motorcycle < Automobile
  def self.wheels
    "This vehicle has 2 wheels."
  end
end

puts Motorcycle.wheels
