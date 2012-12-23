require 'spec_helper'

describe Motorcycle, '.wheels' do
  it 'overrides Vehicle and returns 2 wheels' do
    expect(Motorcycle.wheels).to eq 2
  end
end
