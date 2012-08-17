require_relative '../models/motorcycle'

describe Motorcycle do
  it 'inherits from vehicle' do
    Motorcycle.superclass.should eq Vehicle
  end

  it 'has 2 wheels' do
    Motorcycle.number_of_wheels.should eq 2
  end

end
