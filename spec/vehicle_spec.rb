require_relative "spec_helper"

describe Vehicle do

  it "should start with no wheels" do 
    Vehicle.wheels.should eq(nil)
  end

  it "should take input to describe the automobile" do 
    auto = Vehicle.new(color: "black", make: "Honda", model: "Accord", year: "2007")
    auto.color.should eq("black")
    auto.make.should eq("Honda")
    auto.model.should eq("Accord")
    auto.year.should eq("2007")
  end

  it "should be able to filter the vehicles to only blue honda accords" do
    auto1 = Vehicle.new(color: "Blue", make: "Honda", model: "Accord", year: "2007")
    auto2 = Vehicle.new(color: "Blue", make: "Honda", model: "Accord", year: "2009")
    auto3 = Vehicle.new(color: "Orange", make: "Yamaha", model: "Z7.0", year: "2019")
    results = Vehicle.favorite_car
    results.count.should eq(2)
  end
ends
