require_relative "spec_helper"

describe Motorcycle do

  it "should have 2 wheels" do
    Motorcycle.num_wheels.should eq(2)
  end

end
