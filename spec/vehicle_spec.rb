require 'spec_helper'

describe Vehicle do
	
	it "tracks the creation of one vehicle" do
		expect{Motorcycle.new}.to change{Vehicle.vehicle_count}.by(1)
	end

	# it "tracks the creation of many vehicles" do
	# 	expect{Motorcycle.new, Automobile.new, Motorcycle.new}.to change{Vehicle.vehicle_count}.by(1)
	# end
end