require_relative 'vehicle'
class Motorcycle < Vehicle

  attr_reader :name, :collector
  
  def initialize(options = {})
    @name = options[:name]
    @collector = VehicleCollector.new(self)
  end

  def self.wheels
    2
  end
end
