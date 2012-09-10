require_relative "spec_helper"

describe Motorcycle do

  it "should have 2 wheels" do
    Motorcycle.num_wheels.should eq(2)
  end

  it "should be updateable" do
    mc = Motorcycle.new
    mc.update({color: 'Black', year: 2011, make: 'Suzuki', model: 'Hayabusa'})
    mc.color.should eq('Black')
    mc.year.should eq(2011)
    mc.make.should eq('Suzuki')
    mc.model.should eq('Hayabusa')
  end

end
