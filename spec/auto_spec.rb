require './models/auto'
require 'rspec'

describe Automobile do
  
  let(:auto) {Automobile.new(color: "Red",make: "Ford",model: "Fiesta",year: "2014")}
  
##
# Passing tests 
  it "should have a color" do
    auto.color.should eq("Red")
  end
  it "should have a make" do
    auto.make.should eq("Ford")
  end
  it "should have a model" do
    auto.model.should eq("Fiesta")
  end
  it "should have a year made" do
    auto.year.should eq("2014")
  end
  it "should be able to update via hash" do
    auto.updater(color: "Blue",make: "Chevy", model: "Nova SS", year: "1968")
    auto.color.should eq("Blue")
    auto.make.should eq("Chevy")
    auto.model.should eq("Nova SS")
    auto.year.should eq("1968")
  end
  it "should have 4 the wheels" do
    Automobile.number_of_wheels(4).should eq(4)
  end
  it "should not have 300 wheels" do
    Automobile.number_of_wheels(300).should_not eq(4)  
  end
end

describe Motorcycle do
  it "should have 2 wheels" do
    Motorcycle.number_of_wheels(2).should eq(2)
  end
  it "should not have 4 wheels" do
    Motorcycle.number_of_wheels(4).should_not eq(2)
  end
end