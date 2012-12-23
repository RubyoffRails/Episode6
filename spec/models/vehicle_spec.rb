require 'spec_helper'

describe Vehicle, '.blue_honda_accords' do
  it 'returns only blue honda accords' do
    car = Automobile.new(color: 'blue', make: 'Honda', model: 'Accord', year: 1995)
    another_car = Automobile.new(color: 'blue', make: 'BMW', model: '325i', year: 1995)
    motorcycle = Motorcycle.new

    blue_hondas = Vehicle.blue_honda_accords

    expect(blue_hondas).to eq [car]
  end
end
