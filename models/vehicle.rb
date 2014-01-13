class Vehicle

  attr_reader :color, :make, :model, :year, :name
  
  @@all_vehicles = []

  def initialize(args={})
    @color = args.fetch(:color) if args[:color]
    @make = args.fetch(:make) if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year = args.fetch(:year) if args[:year]
    @name = args.fetch(:name) if args[:name]
    @@all_vehicles << args
  end

  def self.all_vehicles
    @@all_vehicles
  end

  def self.num_wheels
    num_wheels = 4
  end

  def self.filter(args ={})
    search_str =  args.to_a.map { |group| "vehicle[:#{group[0]}] == '#{group[1]}' and "}.reduce(:+)[0..-5]
    @@all_vehicles.find_all { |vehicle| eval(search_str) }
  end

  def update_all_vehicles(name)
    index = @@all_vehicles.index {|vehicle| vehicle[:name] == name}
    @@all_vehicles[index] = { name: @name, color: @color, make: @make, model: @model, year: @year}
  end

  def all_vehicles
    @@all_vehicles
  end

  def update(name, args={})
    @color = args.fetch(:color) if args[:color]
    @make = args.fetch(:make) if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year = args.fetch(:year) if args[:year]
    update_all_vehicles(name)
  end
end