require_relative '../models/moto'

describe Moto do

  before(:each) do
    @moto = Moto.new
  end

  it 'should inherit from Vehicle' do
    @moto.is_a?(Vehicle).should be_true
  end

  it 'should have 2 tires' do
    Moto.wheels.should eq(2)
  end

end