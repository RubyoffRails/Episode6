require "rspec"
require_relative "../models/automobile"

describe Automobile do

	it "should return the number of wheels" do 
		Automobile.number_of_wheels.should eq(4)
	end

	it "should take input to describe the automobile" do 
		auto = Automobile.new(color: "red", make: "honda", model: "accord", year: "2002")
		auto.color.should eq("red")
		auto.make.should eq("honda")
		auto.model.should eq("accord")
		auto.year.should eq("2002")
	end

	it "should allow an update to the automobile" do
		auto = Automobile.new(color: "silver", make: "toyota", model: "camry", year: "2012")
		auto.update(color: "red", make: "honda", model: "accord", year: "2002")
		auto.color.should eq("red")
		auto.make.should eq("honda")
		auto.model.should eq("accord")
		auto.year.should eq("2002")
	end

end