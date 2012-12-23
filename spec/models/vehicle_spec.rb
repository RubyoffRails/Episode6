require 'spec_helper'

describe Vehicle, '@@vehicles' do
  it 'stores all vehicles in a global variable' do
    @@vehicles = []
    Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)
    Motorcycle.new
    expect(@@vehicles.count).to eq 2
  end
end

describe Vehicle, '#blue_honda_accords' do
  it 'returns only blue honda accords' do
    car = Automobile.new(color: 'blue', make: 'Honda', model: 'Accord', year: 1995)
    another_car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)
    motorcycle = Motorcycle.new

    blue_hondas = Vehicle.blue_honda_accords

    expect(blue_hondas).to eq [car]
  end
end

describe Vehicle, '#add_vehicles' do
  it 'adds new instances of subclasses to @@vehicles when created' do
    @@vehicles = []
    car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)
    motorcycle = Motorcycle.new

    expect(@@vehicles.count).to eq 2
  end
end
