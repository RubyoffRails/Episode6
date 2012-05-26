require_relative "../models/vehicle"

class Automobile < Vehicle
  
  attr_accessor :color, :make, :model, :year
  
  def initialize(spec_hash)
  
  @color = spec_hash[:color]
  @make = spec_hash[:make]
  @model = spec_hash[:model]
  @year = spec_hash[:year]
  
  end
  
end