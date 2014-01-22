class Vehicle

	@@allvehicles = []

	def self.tires
		4
	end

	def self.filter
		@@allvehicles.select do |i|
			i.color == "Blue" && i.make == "Honda" && i.model == "Accord"
		end
	end

end
