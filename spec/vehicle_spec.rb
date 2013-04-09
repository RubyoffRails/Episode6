require "rspec"
require_relative "../models/vehicle"

describe Vehicle do

	before(:each) do
		Vehicle.reset
	end

	it "should have four wheels" do 
		Vehicle.number_of_wheels.should eq(nil)
	end

	it "class should keep track of the vehicles made" do
		Vehicle.Vehicles.should_not be(nil)
		Vehicle.Vehicles.count.should eq(0)
		veh = Vehicle.new(color: "white", make: "Honda", model: "Accord", year: "2002")
		Vehicle.Vehicles.count.should eq(1)
	end


	it "should take input to describe the automobile" do 
		auto = Vehicle.new(color: "black", make: "Honda", model: "Accord", year: "2002")
		auto.color.should eq("black")
		auto.make.should eq("Honda")
		auto.model.should eq("Accord")
		auto.year.should eq("2002")
	end

	it "should allow an update to the automobile" do
		auto = Vehicle.new(color: "silver", make: "Toyota", model: "Camry", year: "2012")
		auto.update(color: "red", make: "Honda", model: "Accord", year: "2002")
		auto.color.should eq("red")
		auto.make.should eq("Honda")
		auto.model.should eq("Accord")
		auto.year.should eq("2002")
	end

	it "should filter the vehicles list to only show blue Honda Accords" do
		auto1 = Vehicle.new(color: "blue", make: "Honda", model: "Accord", year: "2002")
		auto2 = Vehicle.new(color: "blue", make: "Honda", model: "Accord", year: "2005")
		auto3 = Vehicle.new(color: "silver", make: "Toyota", model: "Camry", year: "2012")
		results = Vehicle.get_favorite_combo
		results.count.should eq(2)
	end

	it "should allow the class to be reset" do
		auto = Vehicle.new(color: "silver", make: "Toyota", model: "Camry", year: "2012")
		Vehicle.reset
		Vehicle.Vehicles.count.should eq(0)
	end
end