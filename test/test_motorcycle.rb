require_relative 'test_helper'

describe 'Motorcycle class' do
  it 'should exist' do
    Motorcycle.must_be_kind_of Class
  end

  it 'should inherit from Vehicle' do
    Motorcycle.superclass.must_equal Vehicle
  end

  it 'should have a class method that returns the number of wheels' do
    Motorcycle.must_respond_to :wheels
    Motorcycle.wheels.must_equal 2
  end
end
