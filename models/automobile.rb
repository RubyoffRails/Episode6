require_relative 'Vehicle'

class Automobile < Vehicle
	
	attr_reader :color, :make, :model, :year

	def initialize(color, make, model, year)
		@color = color
		@make = make
		@model = model
		@year = year
	end

	def update(args)
		@color = args.fetch(:color) if args[:color]
		@make = args.fetch(:make) if args[:make]
		@model = args.fetch(:model) if args[:model]
		@year = args.fetch(:year) if args[:year]
	end
end