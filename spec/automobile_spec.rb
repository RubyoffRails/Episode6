require 'rspec'
require 'bundler/setup'
require_relative '../db/setup'
require_relative "../models/automobile"

describe Automobile do

	let!(:car) {Automobile.new(color: "blue", make: "Honda", model: "S2000", year: 2001)}

	it "should have color" do
		car.color.should eq("blue")
	end

	it "should have a make" do
		car.make.should eq("Honda")
	end

	it "should have a model" do
		car.model.should eq("S2000")
	end

	it "should have a year" do 
		car.year.should eq(2001)
	end

	it "should be able to change attributes" do
		car.color = "green"
		car.color.should eq("green")
	end

	it "should have four wheels" do
		Automobile.number_of_wheels.should eq(4)
	end

end


describe Motorcycle do

	it "should override the number of wheels" do
		Motorcycle.number_of_wheels.should eq(2)
	end

end


describe Vehicle do
	Vehicle.create(color: "gray", make: "USN", model: "Ballistic Sub", year: 2008)
	Vehicle.create(color: "while", make: "NASA", model: "SATURN V", year: 1969)
	Vehicle.create(color: "blue", make: "Honda", model: "CR-V", year: 1999)
	Vehicle.create(color: "blue", make: "Honda", model: "Accord", year: 2009)

	it "should return a count of vehicles" do
		Vehicle.count.should eq(4)
	end

	it "should return a count of blue honda accords" do
		Vehicle.count_blue_hondas.should eq(1)
	end
end



