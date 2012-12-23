require 'spec_helper'

describe Motorcycle, '.initialize' do
  it 'has a name and vehicle collector when instantiated' do
    @@vehicles = []
    motorcycle = Motorcycle.new(name: 'Harley Davidson')

    expect(motorcycle.collector).to be_instance_of VehicleCollector
    expect(motorcycle.name).to eq 'Harley Davidson'
    expect(@@vehicles).to eq [motorcycle]
  end
end

describe Motorcycle, '.wheels' do
  it 'overrides Vehicle and returns 2 wheels' do
    expect(Motorcycle.wheels).to eq 2
  end
end
