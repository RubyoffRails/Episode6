require "rspec"
require_relative "../models/automobile"

describe Automobile do
  
  daCar = Automobile.new({color: "red", make: "VW", model: "GTI", year: "2008"})
  
  it "should have 4 wheels" do
    Automobile.wheels.should eq(4)
  end

  it "should be green" do
    daCar.color = "green"
    daCar.color.should eq("green")
  end

  it "should be a Volvo" do
    daCar.make = "Volvo"
    daCar.make.should eq("Volvo")
  end
  
  it "should be a S40 R" do
    daCar.model = "S40 R"
    daCar.model.should eq("S40 R")
  end

  it "should be a 2006" do
    daCar.year = "2006"
    daCar.year.should eq("2006")
  end

end