require 'spec_helper'

describe Automobile, '.initialize' do
  it 'can receive a hash containing color, make, model and year to update its variables' do
    @@vehicles = []
    car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)

    expect(car.color).to eq 'blue'
    expect(car.make).to eq 'BMW'
    expect(car.model).to eq '325i'
    expect(car.year).to eq 1995
    expect(car.collector).to be_instance_of VehicleCollector
  end
end

describe Automobile, '.initialize' do
  it 'has a vehicle collector when instantiated' do
    @@vehicles = []
    car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)

    expect(@@vehicles).to eq [car]
  end
end

describe Automobile, '.wheels' do
  it 'returns the number of wheels' do
    Automobile.wheels.should eq 4
  end
end
