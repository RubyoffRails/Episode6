class Vehicle

	@@vehicles = []

	def self.get_favorite_combo
		veh = @@vehicles.select { |i| i.color == "blue" && 
			i.make == "Honda" && i.model == "Accord" }
	end

	def self.reset
		@@vehicles = []
	end

	def self.number_of_wheels
		@wheels = nil
	end

	def self.vehicles
		@@vehicles
	end

	attr_reader :color, :make, :model, :year
	def initialize (hash={})
		@@vehicles << self
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

	def to_s
		"#{year} #{color} #{make} #{model}"
	end

end