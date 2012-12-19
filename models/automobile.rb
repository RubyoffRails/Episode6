class Vehicle < ActiveRecord::Base

	def self.count
		self.all.length
	end

	def self.count_blue_hondas
		blue_hondas = self.all.count {|vehicle| vehicle.make == "Honda"; vehicle.color == "blue"; vehicle.model == "Accord"}
	end

end


class Automobile < Vehicle

	@number_of_wheels = 4

	class << self
		attr_reader :number_of_wheels
		attr_reader :vehicles_made
	end

end


class Motorcycle < Automobile
	@number_of_wheels = 2

	class << self
		attr_reader :number_of_wheels
	end
end