class Automobile
  attr_accessor :color, :make, :model, :year
  
  def initialize(hash)
    @color = hash[:color]
    @make  = hash[:make]
    @model = hash[:model]
    @year  = hash[:year] 
  end
  
  def self.wheels
    4
  end
    
end

