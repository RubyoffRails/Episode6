require_relative 'test_helper'

describe 'Vehicle class' do
  it 'should exist' do
    Vehicle.must_be_kind_of Class
  end

  it 'should have a class method that returns the number of wheels' do
    Vehicle.must_respond_to :wheels
    Vehicle.wheels.must_equal 4
  end
end
