class Automobile

  attr_accessor :color, :make, :year
  
  def self.wheels
    @wheels = 4    
  end

  def initialize
    @color = nil
    @make = nil
    @year = nil
  end

  def update(args)
    self.color = args[:color]
    self.make = args[:make]
    self.year = args[:year]
  end

end
