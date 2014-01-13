require_relative('../models/Motorcycle.rb')
require 'rspec'

describe Motorcycle do
  it 'should return number of tires' do
    Motorcycle.new.tires.should == 2
  end

end