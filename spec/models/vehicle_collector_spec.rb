require 'spec_helper'

describe VehicleCollector, '.initialize' do
  it 'receives a subclass of vehicle as an attribute when instantiated' do
    @@vehicles = []
    motorcycle = Motorcycle.new
    collector = VehicleCollector.new(motorcycle)

    expect(collector.vehicle).to eq motorcycle
  end
end

describe VehicleCollector, '.show_vehicles' do
  it 'outputs all collected vehicles' do
    @@vehicles = []
    motorcycle = Motorcycle.new(name: 'Harley Davidson')
    another_motorcycle = Motorcycle.new(name: 'Honda')

    expect(VehicleCollector.show_vehicles).to eq ['Harley Davidson', 'Honda']
  end
end

describe VehicleCollector, '#add_vehicles' do
  it 'adds vehicles to global variable' do
    @@vehicles = []
    car = Automobile.new

    expect(@@vehicles.length).to eq 1
  end
end
