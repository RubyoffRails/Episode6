require 'rspec'
require '../models/eagle'

describe Vehicle do
  let(:vehicle) { Vehicle.new }

  describe '.wheels' do
    it 'should return two' do
      Vehicle.wheels.should eq(2)
    end
  end

  describe "#new" do
    it "takes no parameters and returns a Vehicle object" do
      vehicle.should be_an_instance_of Vehicle
    end
  end

  describe "#search" do
    it "should find an Automobile when it is searched for" do
      Automobile.build model: :mazda, color: :red, make: 'Civic', year: 2012
      Automobile.build model: :toyota, color: :red, make: 'Corolla', year: 2010
      auto = Automobile.build model: :honda, color: :blue, make: 'Civic', year: 2013
      Automobile.build model: :mazda, color: :blue, make: 'Accord', year: 2003
      Vehicle.search(color: "blue", model: "honda").first.should eq(auto)
    end
  end

  describe "#count" do
    it "should not increment the Vehicle count no matter how many vehicles are created but not built" do
      expect{8.times { Vehicle.new }}.to_not change{Vehicle.count}.from(0).to(0)
    end
  end
end
