require_relative 'spec_helper'

describe Vehicle do

  it 'should add a motorcycle to vehicles' do
    @@vehicles = []
    Motorcycle.new
    @@vehicles.size.should eq(1)
  end

  it 'should add a motorcycle and automobile to vehicles' do
    @@vehicles = []
    car = Automobile.new('red', 'ferrari', 2012)
    @@vehicles.size.should eq(1)
  end

  it 'should add a motorcycle and automobile' do
    @@vehicles = []
    motorcycle = Motorcycle.new
    honda = Automobile.new('blue', 'honda', 1999)
    @@vehicles.should eq([motorcycle, honda])
  end

  describe '.give_me_blue_hondas' do

    subject { Vehicle }

    it 'should give me cars when I search for blue hondas' do
      honda = Automobile.new('blue', 'honda', 1999)
      subject.give_me_blue_hondas.first.should be_a(Automobile)    
    end

    it 'should have a blue attr and honda attr' do
      honda = Automobile.new('blue', 'honda', 1999)
      subject.give_me_blue_hondas.should include(honda)
    end
  end
end
