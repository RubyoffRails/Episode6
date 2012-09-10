require_relative "spec_helper"

describe Automobile do

  it "should update with the correct values" do
    auto = Automobile.new
    auto.update({color: 'Red', year: 2005, make: 'Dodge', model: 'Magnum'})
    auto.color.should eq('Red')
    auto.year.should eq(2005)
    auto.make.should eq('Dodge')
    auto.model.should eq('Magnum')
  end

  it "should update with the correct value" do
    auto = Automobile.new
    auto.update({color: 'Green'})
    auto.color.should eq('Green')
    auto.year.should be_nil
    auto.make.should be_nil
    auto.model.should be_nil
  end

  it "should have 4 wheels" do
    Automobile.num_wheels.should eq(4)
  end

end
