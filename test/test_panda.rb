require_relative 'test_helper'

describe "Automobile class" do
  it "should exist" do
    Automobile.must_be_kind_of Class
  end

  it 'should have a class method that returns the number of wheels' do
    Automobile.must_respond_to :wheels
    Automobile.wheels.must_equal 4
  end

  it 'should have default features when initialized with an empty hash' do
    car = Automobile.new({})

    car.color.must_equal 'black'
    car.make.must_equal 'ford'
    car.model.must_equal 'taurus'
    car.year.must_equal '2012'
  end
end
