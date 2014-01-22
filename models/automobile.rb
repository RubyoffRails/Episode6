class Automobile
	attr_accessor :color, :make, :model, :year
	def initialize(color, make, model, year)
		@color = color
		@make = make
		@model = model
		@year = year
	end

	def wheels
		4
	end
end