require_relative '../models/auto'

describe Auto do
  before(:each) do
    @auto = Auto.new
  end

  it "should return number of wheels" do
    Auto.wheels.should eq(4)
  end

  it 'should have color attribute' do
    @auto.should respond_to(:color)
  end

  it 'should have make attribute' do
    @auto.should respond_to(:make)
  end

  it 'should have model attribute' do
    @auto.should respond_to(:model)
  end

  it 'should have year attribute' do
    @auto.should respond_to(:year)
  end

  it 'should accept a hash of info to update variables' do
    auto = Auto.new(options = {:color => 'black', :make => 'Volkswagen', :model => 'Golf', :year => 2012})
    auto.make.should eq('Volkswagen')
  end

  it 'should inherit from vehicle' do
    @auto.is_a?(Vehicle).should be_true
  end

end