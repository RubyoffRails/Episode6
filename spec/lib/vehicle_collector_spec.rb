require 'spec_helper'

describe VehicleCollector, '.show_vehicles' do
  it 'outputs all collected vehicles' do
    VehicleCollector.reset
    motorcycle = Motorcycle.new(name: 'Harley Davidson')
    another_motorcycle = Motorcycle.new(name: 'Honda')

    expect(VehicleCollector.show_vehicles).to eq ['Harley Davidson', 'Honda']
  end
end

describe VehicleCollector, '.add_vehicles' do
  it 'adds vehicles to class variable' do
    motorcycle = Motorcycle.new(name: 'Harley Davidson')
    # Reset here since add_vehicles is called in initialize
    VehicleCollector.reset
    expect(VehicleCollector.add_vehicles(motorcycle).length).to eq 1 
  end
end

describe VehicleCollector, '.get' do
  it 'returns @@vehicles' do
    VehicleCollector.reset
    car = Automobile.new

    expect(VehicleCollector.get.first).to eq car
  end
end

describe VehicleCollector, '.reset' do
  it 'clears out @@vehicles' do
    motorcycle = Motorcycle.new(name: 'Harley Davidson')
    VehicleCollector.reset

    expect(VehicleCollector.get).to be_empty
  end
end
