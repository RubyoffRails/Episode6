require 'spec_helper'

describe Motorcycle, '.initialize' do
  it 'has a name and type when instantiated' do
    @@vehicles = []
    motorcycle = Motorcycle.new(name: 'Harley Davidson')

    expect(motorcycle.type).to be_instance_of Vehicle
    expect(motorcycle.name).to eq 'Harley Davidson'
  end
end

describe Motorcycle, '.wheels' do
  it 'overrides Vehicle and returns 2 wheels' do
    expect(Motorcycle.wheels).to eq 2
  end
end
