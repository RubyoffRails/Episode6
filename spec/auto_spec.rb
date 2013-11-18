
require_relative "spec_helper"

describe Auto do 
  it "should have four wheels" do
    Auto.wheels.should eq(4)
  end
  
end
