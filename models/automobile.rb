require_relative './vehicle'

class Automobile < Vehicle
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

  #this is brittle. It'll break as soon as other instance variables are added to the Automobile class.
  def ==(other) 
    result = true
    [[other.color, self.color], [other.make, self.make], [other.model, self.model], [other.year, self.year]].each do |other, this|
        puts "other: #{other} this: #{this}"
        result = false unless other == this
    end 
    return result       
  end
      
end

