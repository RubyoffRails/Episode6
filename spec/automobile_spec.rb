require_relative 'spec_helper'

describe Automobile do
  
  describe ".wheels" do
    
    subject { Automobile }

    it 'should tell me how many wheels it has' do
      subject.wheels.should eq(4)
    end 

  end

  let(:car) {Automobile.create(color: 'red', make: 'ferrari', year: 2012)}

  it 'should have a color' do
    car.color.should eq('red')
  end

  it 'should have a make' do
    car.make = 'Ferrari'
    car.make.should eq('Ferrari')
  end

  it 'should have a year' do
    car.year = 2012
    car.year.should eq(2012)
  end

  it 'should be able to receive an update method' do
    car.update(color: 'blue', make: 'audi', year: 2011)
    car.color.should eq('blue')
    car.make.should eq('audi')
    car.year.should eq(2011)
  end

  it 'should be able to update 1 attribute at a time' do
    car.make = 'ford'
    car.update(color: 'purple')
    car.make = 'ford'
    car.color.should eq('purple')
  end 

  it 'should have an attributes method' do
    car.attributes.should eq(['red', 'ferrari', 2012])
  end

  it 'should compare two car attributes' do
    car_one = Automobile.new('blue', 'ferrari', 2012)
    car_two = Automobile.new('blue', 'ferrari', 2012)
    (car_one.attributes == car_two.attributes).should be_true
  end

end


