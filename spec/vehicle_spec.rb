require_relative('../models/Vehicle.rb')
require 'rspec'

describe Vehicle do
  it 'should return number of tires' do
    Vehicle.new(4).tires.should be_a_kind_of Numeric
  end

end