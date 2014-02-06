require 'rspec'
require './models/eagle'

describe Motorcycle do

  let(:cycle) { Motorcycle.new }

  it "increments the vehicle count when a new Motorcycle is created " do
    Vehicle.count.should eq(1)
  end
end
