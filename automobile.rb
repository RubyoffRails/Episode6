class Auto
  attr_accessor :color, :make, :model, :year
  def self.wheels
    4
  end
  def initialize(opts = {})
    opts.each { |k,v| instance_variable_set("@#{k}", v) }
  end

  def update(opts = {})
    opts.each { |k,v| instance_variable_set("@#{k}", v) }
  end
end
puts Auto.wheels
