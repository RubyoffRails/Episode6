require 'spec_helper'

describe Automobile, '.wheels' do
  it 'returns the number of wheels' do
    Automobile.wheels.should eq 4
  end
end

describe Automobile, '.initialize' do
  it 'can receive a hash containing color, make, model and year to update its variables' do
    car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)

    expect(car.color).to eq 'blue'
    expect(car.make).to eq 'BMW'
    expect(car.model).to eq '325i'
    expect(car.year).to eq 1995
  end
end

describe Automobile, '#add_to_vehicles' do
  it 'adds itself to @@vehicles array' do
    @@vehicles = []
    car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)

    expect(@@vehicles.count).to eq 1
  end
end
