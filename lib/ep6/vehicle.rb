class Vehicle
  extend Enumerable

  @all_vehicles = []

  # create read/write methods for @all_vehicles
  class << self
    attr_accessor :all_vehicles
  end

  def initialize
    Vehicle.all_vehicles.push self
  end

  def self.wheels
    4
  end

  def self.each
    @all_vehicles.each do |vehicle|
      yield vehicle
    end
  end
end
