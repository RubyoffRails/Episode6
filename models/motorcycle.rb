require_relative 'vehicle'
class Motorcycle < Vehicle

  attr_reader :name, :type
  
  def initialize(options = {})
    @name = options[:name]
    @type = Vehicle.new(self)
  end

  def self.wheels
    2
  end
end
