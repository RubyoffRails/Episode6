require_relative 'spec_helper'

describe Automobile do

  it "should return the number of wheels" do
    expect(Automobile.num_wheels).to eq(4)
  end

  it "should have and set attributes: color, make, model, and year" do
    car = Automobile.new(name: 'bill', color: "blue", make: "Toyota", model: "Prius", year: 2008 )
    expect(car.color).to eq('blue')
    expect(car.make).to eq('Toyota')
    expect(car.model).to eq('Prius')
    expect(car.year).to eq(2008)
  end

  it "should allow you to change attributes" do
    car = Automobile.new(name: 'jerry', color: "blue", make: "Toyota", model: "Prius", year: 2008 )
    expect(car.color).to eq("blue")
    car.update('jerry', color: "yellow")
    expect(car.color).to eq("yellow")
  end
end