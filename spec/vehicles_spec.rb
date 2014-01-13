require_relative 'spec_helper'

describe Vehicle do

  it "should add to @all_vehicles" do
    Automobile.new(name: 'new', color: 'purple', make: 'Toyota', model: 'Prius', year: 2008) 
    index = Automobile.all_vehicles.index {|vehicle| vehicle[:name] == 'new' }
    expect(Automobile.all_vehicles[index]).to eq({name: 'new', :color => 'purple', :make => 'Toyota', :model => 'Prius', :year => 2008})
  end

  describe "#filter" do
    it "should filter on blue honda accords" do
      Automobile.new(name: 'new3', color: 'blue', make: 'Honda', model: 'Accord', year: 2008) 
      Automobile.new(name: 'new4', color: 'white', make: 'Honda', model: 'Accord', year: 2008) 
      Automobile.new(name: 'new5', color: 'blue', make: 'Honda', model: 'Accord', year: 2008) 
      Automobile.new(name: 'new6', color: 'purple', make: 'Toyota', model: 'Prius', year: 2008) 
      expect(Automobile.filter(color: 'blue', make: 'Honda', model: 'Accord')).to eq([{name: 'new3', color: 'blue', make: 'Honda', model: 'Accord', year: 2008}, {name: 'new5', color: 'blue', make: 'Honda', model: 'Accord', year: 2008}])
    end
  end


  describe "#update" do
    it "should update @@all_vehicles" do
      car = Automobile.new(name: 'new2', color: 'purple', make: 'Toyota', model: 'Prius', year: 2008) 
      car.update('new2', year: 2009)
      index = car.all_vehicles.index {|vehicle| vehicle[:name] == 'new2' }
      expect(car.all_vehicles[index][:year]).to eq(2009)
    end
  end

  it "should return the number of wheels" do
    expect(Vehicle.num_wheels).to eq(4)
  end

  it "should keep track of the vehicles created" do
    Automobile.new(name: 'john', color: 'yellow', make: 'Toyota', model: 'Prius', year: 2008)
    Motorcycle.new(name: 'ben', color: 'red', make: 'honda', model: 'fast', year: 2014)
    expect(Automobile.all_vehicles.length).to eq(2)
  end
end
