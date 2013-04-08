class Automobile

	def self.number_of_wheels
		@wheels = 4
	end

	attr_reader :color, :make, :model, :year
	def initialize (hash={})
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

end