require 'spec_helper'

describe Automobile do

	let(:auto) { Automobile.new("Yellow", "Honda", "Accord", "1988")}

	it "returns the number of wheels for its class" do
		Automobile.number_of_wheels.should eq(4)
	end

	it "has a color" do
		auto.color.should eq("Yellow")
	end

	it "has a make" do
		auto.make.should eq("Honda")
	end

	it "has a model" do
		auto.model.should eq("Accord")
	end

	it "has a year" do
		auto.year.should eq("1988")
	end

	it "can have one of its attributes updated by hash" do
		auto.update(color: "Blue")
		auto.color.should eq("Blue")
	end

	it "can have many of its attributes updated by hash" do
		auto.update(color: "Red", year: "1993")
		auto.color.should eq("Red")
		auto.year.should eq("1993")
	end

	it "can have all of its attributes updated by hash" do
		auto.update(color: "Green", model: "Camry", make: "Toyota", year: "2003")
		auto.color.should eq("Green")
		auto.make.should eq("Toyota")
		auto.model.should eq("Camry")
		auto.year.should eq("2003")
	end
end