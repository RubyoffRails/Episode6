require 'spec_helper'

describe Motorcycle do

	it "does not have 4 tires" do
		Motorcycle.number_of_wheels.should_not eq(4)
	end

	it "has 2 tires" do
		Vehicle.number_of_wheels.should eq(4)
		Motorcycle.number_of_wheels.should eq(2)
	end
end