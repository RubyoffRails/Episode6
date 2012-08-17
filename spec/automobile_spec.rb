require_relative '../models/automobile'

describe Automobile do
  it 'inherits from vehicle' do
    Automobile.superclass.should eq Vehicle
  end

  it 'has 4 wheels' do
    Automobile.number_of_wheels.should eq 4
  end
end

