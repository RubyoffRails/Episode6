require_relative "spec_helper"

describe Vehicle do

  it "should increment counts of vehicles" do
    Vehicle.vehicles.length.should eq(3)
  end

  it "should find Blue Honda Accords" do
    bha1 = Automobile.new
    bha1.update({color: 'Blue', year: 2011, make: 'Honda', model: 'Accord'})
    bha2 = Automobile.new
    bha2.update({color: 'Blue', year: 2003, make: 'Honda', model: 'Accord'})
    Automobile.new
    Vehicle.find_blue_honda_accords.should eq([bha1, bha2])
  end

end
