require 'spec_helper'

describe Motorcycle, '.wheels' do
  it 'overrides Vehicle and returns 2 wheels' do
    expect(Motorcycle.wheels).to eq 2
  end
end

describe Motorcycle, '#add_to_vehicles' do
  it 'adds itself to @@vehicles array' do
    @@vehicles = []
    motorcycle = Motorcycle.new

    expect(@@vehicles.count).to eq 1
  end
end
