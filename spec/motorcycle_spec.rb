require_relative 'spec_helper'

describe Motorcycle do
  it "should return the number of wheels" do
    expect(Motorcycle.num_wheels).to eq(2)
  end
end