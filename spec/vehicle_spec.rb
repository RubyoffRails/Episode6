require_relative '../models/vehicle'

describe Vehicle do
  it 'has 4 wheels' do
    Vehicle.number_of_wheels.should eq 4
  end

  it 'tracks the vehicles created' do
    car = Vehicle.new
    car.update_attributes({year: 2012, make: 'honda'})
    bike = Vehicle.new
    Vehicle.vehicles.should include bike, car
  end

  describe "it's attributes" do
    %w(color make model year).each do |attribute|
      it "has a #{attribute}" do
        subject.should respond_to attribute
      end
    end
  end

  describe "#update_attributes" do
    it "updates its variables from a hash" do
      car = Vehicle.new
      car.update_attributes({color: "black", make: "Honda", model: "civic", year: 2012})
      car.color.should eq "black"
      car.make.should eq "honda"
      car.model.should eq "civic"
      car.year.should eq 2012
    end
  end

  describe 'provides vehicle filters' do
    it 'filters by make' do
      toyota = Vehicle.new
      toyota.update_attributes({make: 'toyota'})
      Vehicle.filter({make: 'toyota'}).should include toyota
      Vehicle.filter({make: 'honda'}).should_not include toyota
    end

    it 'filters by model' do
      civic = Vehicle.new
      civic.update_attributes({model: 'civic'})
      Vehicle.filter({model: 'civic'}).should include civic
      Vehicle.filter({model: 'accord'}).should_not include civic
    end

    it 'filters by color' do
      blue = Vehicle.new
      blue.update_attributes({color: 'blue'})
      Vehicle.filter({color: 'blue'}).should include blue
      Vehicle.filter({color: 'black'}).should_not include blue
    end

    it 'returns the blue honda accords' do
      accord1 = Vehicle.new
      accord1.update_attributes({model: 'accord', make: 'honda', color: 'Blue', year: 2001})
      audi = Vehicle.new
      audi.update_attributes({model: 'A4', make: 'audi', color: 'black', year: 2002})
      accord2 = Vehicle.new
      accord2.update_attributes({model: 'accord', make: 'honda', color: 'blue', year: 1994})
      Vehicle.filter({make: 'honda', 
                      model: 'accord', 
                      color: 'blue'}).should include accord2, accord1
    end
  end

end
