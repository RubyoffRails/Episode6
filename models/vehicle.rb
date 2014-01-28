class Vehicle

	@@vehicles_made ||= 0

	def initialize
		@@vehicles_made += 1
	end

	def self.number_of_wheels
		4
	end

end