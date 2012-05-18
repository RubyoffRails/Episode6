require_relative 'spec_helper'

describe Automobile do
  
  # This test is redundant since if class Autombile doesn't exist the describe Automobile will pick up on it.
  it 'should exist as a class definition' do
    car = Automobile.new
    car.should be_a(Automobile)
  end

  describe ".wheels" do
    
    subject { Automobile.wheels }

    it 'should tell me how many wheels it has' do
      @wheels = 4
      subject.should eq(4)
    end 

  end

  it 'should have a color' do
    car = Automobile.new
    car.color = 'red'
    car.color.should eq('red')
  end

  it 'should have a make' do
    subject.make = 'Ferrari'
    subject.make.should eq('Ferrari')
  end

  it 'should have a year' do
    subject.year = 2012
    subject.year.should eq(2012)
  end

  it 'should be able to receive an update method' do
    subject.update(color: 'blue', make: 'audi', year: 2011)
    subject.color.should eq('blue')
    subject.make.should eq('audi')
    subject.year.should eq(2011)
  end

  it 'should be able to update 1 attribute at a time' do
    subject.make = 'ford'
    subject.update(color: 'purple')
    subject.make = 'ford'
    subject.color.should eq('purple')
  end 
end




