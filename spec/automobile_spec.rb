require "rspec"
require_relative "../models/automobile"

describe Automobile do

	it "should have four wheels" do 
		Automobile.number_of_wheels.should eq(4)
	end

end