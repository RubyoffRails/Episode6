class Vehicle

	@@Vehicles = []

	def self.get_favorite_combo
		veh = @@Vehicles.select { |i| i.color == "blue" && 
			i.make == "Honda" && i.model == "Accord" }
	end

	def self.reset
		@@Vehicles = []
	end

	def self.number_of_wheels
		@wheels = nil
	end

	def self.Vehicles
		@@Vehicles
	end

	attr_reader :color, :make, :model, :year
	def initialize (hash={})
		@@Vehicles << self
		@color = hash.fetch(:color)
		@make = hash.fetch(:make)
		@model = hash.fetch(:model)
		@year = hash.fetch(:year)
	end

	def update (hash={})
		@color = hash.fetch(:color)
		@make = hash.fetch(:make)
		@model = hash.fetch(:model)
		@year = hash.fetch(:year)
	end
	
	def color 
		@color		
	end

	def make
		@make
	end

	def model
		@model
	end

	def year
		@year
	end

	def to_s
		"#{year} #{color} #{make} #{model}"
	end

end