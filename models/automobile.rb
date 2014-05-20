class Automobile
  attr_accessor :color, :make, :model, :year

  def self.wheel_count
    "The Automobile class has 4 wheels"
  end

  def initialize(color, make, model, year)
    @color = color
    @make  = make
    @model = model
    @year  = year
  end

  def update(args)
    @color = args.fetch(:color) if args[:color]
    @make  = args.fetch(:make)  if args[:make]
    @model = args.fetch(:model) if args[:model]
    @year  = args.fetch(:year)  if args[:year]
  end
end

car = Automobile.new('Red', 'Ferrari', '458 Italia', '2014')
puts Automobile.wheel_count
puts "Color: #{car.color}"
puts "Make: #{car.make}"
puts "Model: #{car.model}"
puts "Year: #{car.year}"

puts "\nUpdated car details:"

car.update({ color: 'Yellow', model: "LaFerrari" })
puts "Color: #{car.color}"
puts "Make: #{car.make}"
puts "Model: #{car.model}"
puts "Year: #{car.year}"

