require 'rspec'
require '../models/eagle'

describe Motorcycle do
  before :each do
    @bike = Motorcycle.new
  end

  describe '.wheels' do
    it 'should return two' do
      wheels = Motorcycle.wheels
       wheels.should == 2
    end
  end

  describe "#new" do
    it "takes no parameters and returns a Motorcycle object" do
        @bike.should be_an_instance_of Motorcycle
    end
  end
end
