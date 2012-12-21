class Automobile

  attr_reader :color, :make, :model, :year

  def initialize(options = {})
    @color = options[:color]
    @make = options[:make]
    @model = options[:model]
    @year = options[:year]
  end

  def self.wheels
    4 # Hardcoded value since there were no further intructions regarding what an automobile is. 
  end
end
