require "rspec"
require_relative "../models/motorcycle"

describe Motorcycle do

	it "should have two wheels" do 
		Motorcycle.number_of_wheels.should eq(2)
	end

end