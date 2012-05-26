require "rspec"
require_relative "../models/motorcycle"

describe Motorcycle do
  
  it "should have 2 tires" do
    Motorcycle.tires.should eq(2)
  end
  
end