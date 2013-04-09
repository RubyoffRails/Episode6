require "rspec"
require_relative "../models/vehicle"

describe Vehicle do

	it "should have four wheels" do 
		Vehicle.number_of_wheels.should eq(nil)
	end
end