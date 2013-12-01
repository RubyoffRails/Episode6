class Automobile < ActiveRecord::Base
	def initialize
		@color = color
		@make = make
		@model = model
		@year = year
	end

	def number_of_tires
		4
	end
end	

automobile = {color: "Black", make: "SUV", model: "Range Rover", year: 2013}

class Vehicle < Automobile
end

class Motorcycle < Automobile
	def number_of_tires
		2
	end
end

