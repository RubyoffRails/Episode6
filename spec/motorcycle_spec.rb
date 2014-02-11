require 'rspec'
require '../models/eagle'

describe Motorcycle do
  let (:bike) {Motorcycle.new}

  describe '.wheels' do
    it 'should return two' do
      Motorcycle.wheels.should eq(2)
    end
  end

  describe "#new" do
    it "takes no parameters and returns a Motorcycle object" do
      bike.should be_an_instance_of Motorcycle
    end

     it 'should inherit from vehicle' do
      bike.is_a?(Vehicle).should be_true
    end
  end
end
