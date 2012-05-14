require_relative 'test_helper'

describe 'Vehicle class' do
  it 'should exist' do
    Vehicle.must_be_kind_of Class
  end

  it 'should have a class method that returns the number of wheels' do
    Vehicle.must_respond_to :wheels
    Vehicle.wheels.must_equal 4
  end

  describe 'class instance variable and enumerability' do
    before do
      # I don't think this should be necessary, but it is. Why?
      Vehicle.all_vehicles = []
    end

    it 'should store all the vehicles as they are made' do
      car = Automobile.new
      motorcycle = Motorcycle.new
      vehicle = Vehicle.new

      Vehicle.all_vehicles.count.must_equal 3
    end

    it 'should include enumerable methods' do
      Vehicle.must_respond_to :each
      Vehicle.must_respond_to :select
      Vehicle.must_respond_to :map
      Vehicle.must_respond_to :partition
    end
  end
end
