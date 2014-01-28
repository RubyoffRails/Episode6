class Vehicle

	@@vehicles_made ||= 0

	def self.number_of_wheels
		4
	end

	def self.vehicle_count
		@@vehicles_made
	end

	def initialize
		@@vehicles_made += 1
	end

end