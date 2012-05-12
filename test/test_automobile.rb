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

  it 'should override defaults when given various values' do
    white_car = Automobile.new({:color => 'white'})
    mercedes = Automobile.new({:make => 'mercedes'})
    charger = Automobile.new({:model => 'charger'})
    classic = Automobile.new({:year => '1968'})

    white_car.color.must_equal 'white'
    mercedes.make.must_equal 'mercedes'
    charger.model.must_equal 'charger'
    classic.year.must_equal '1968'
  end

  it 'should accept multiple values in any order' do
    old_charger = Automobile.new({:year => '1968', :model => 'charger'})
    new_mercedes = Automobile.new({
      :model => 'SE',
      :make => 'mercedes',
      :color => 'red',
      :year => '2010'
    })

    old_charger.model.must_equal 'charger'
    old_charger.year.must_equal '1968'

    new_mercedes.color.must_equal 'red'
    new_mercedes.year.must_equal '2010'
  end

  it 'should be able to change its color' do
    car = Automobile.new
    car.color.must_equal 'black'

    car.color = 'white'
    car.color.must_equal 'white'
  end
end
