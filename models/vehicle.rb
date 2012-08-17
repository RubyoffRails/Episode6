class Vehicle
  
  @@vehicles = []
  attr_accessor :color, :make, :model, :year

  def initialize
    @@vehicles << self
  end

  def update_attributes(attribute_hash)
    @color =  attribute_hash[:color]
    @make =   attribute_hash[:make]
    @model =  attribute_hash[:model]
    @year =   attribute_hash[:year]
  end

  def color
    @color.downcase unless @color.nil?
  end

  def make
    @make.downcase unless @make.nil?
  end

  def model
    @model.downcase unless @model.nil?
  end
  
  def self.number_of_wheels
    4
  end

  def self.vehicles
    @@vehicles
  end

  def self.filter(filter_hash)
    filter_by_make(filter_hash)
  end

  private

  def self.filter_by_make(filter_hash)
    if filter_hash[:make]
      vehicles = @@vehicles.select do |vehicle|
        vehicle.make == filter_hash[:make].downcase
      end
      filter_by_model(vehicles, filter_hash)
    else
      filter_by_model(@@vehicles, filter_hash)
    end
  end
  
  def self.filter_by_model(vehicles, filter_hash)
    if filter_hash[:model]
      model_vehicles = vehicles.select do |vehicle|
        vehicle.model == filter_hash[:model].downcase
      end
      filter_by_color(model_vehicles, filter_hash)
    else
      filter_by_color(vehicles, filter_hash)
    end
  end

  def self.filter_by_color(vehicles, filter_hash)
    if filter_hash[:color]
      vehicles.select do |vehicle|
        vehicle.color == filter_hash[:color].downcase
      end
    else
      vehicles
    end
  end
end
