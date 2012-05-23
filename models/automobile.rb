require_relative './vehicle'

class Automobile < Vehicle
  ATTRIBUTES = [:color, :make, :model, :year]
  ATTRIBUTES.each { |attribute| attr_accessor attribute }
  
  def initialize(hash)
    @color = hash[:color]
    @make  = hash[:make]
    @model = hash[:model]
    @year  = hash[:year] 
  end
  
  def self.wheels
    4
  end

  def ==(other)     
    ATTRIBUTES.all? do |attr| 
      other.send(attr) == self.send(attr)   
    end 
  end
      
end