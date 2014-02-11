require 'rspec'
require '../models/eagle'

describe Automobile do
  describe '.wheels' do
    it 'should return four' do
      Automobile.wheels.should eq(4)
    end
  end

  let (:auto) { Automobile.new(model: 'Mustang', color: 'Red', make: 'Ford', year: 2007)}

  describe "#new" do
    it "takes four parameters and returns a Automobile object" do
      auto.should be_an_instance_of Automobile
    end

    it 'should inherit from vehicle' do
      auto.is_a?(Vehicle).should be_true
    end
  end

  describe "#model" do
    it 'should have model attribute' do
      auto.should respond_to(:model)
    end

    it "returns the correct model" do
        auto.model.should eql 'Mustang'
    end
  end

  describe "#color" do
    it 'should have color attribute' do
      auto.should respond_to(:color)
    end

    it "returns the correct color" do
      auto.color.should eql 'Red'
    end
  end

  describe "#make" do
    it 'should have make attribute' do
      auto.should respond_to(:make)
    end

    it "returns the correct make" do
      auto.make.should eql 'Ford'
    end
  end

  describe "#year" do
    it 'should have year attribute' do
      auto.should respond_to(:year)
    end

    it "returns the correct year" do
      auto.year.should eql 2007
    end
  end

  describe "#update" do
    context "with no parameters" do
        it "should keep the Automobile unchanged if no parameters are given " do
          auto.update({})
          auto.model.should eql 'Mustang'
          auto.color.should eql 'Red'
          auto.make.should eql 'Ford'
          auto.year.should eql 2007
        end
    end

    it 'should update the model attribute' do
      auto.update(model: 'Calibre')
      auto.model.should eql 'Calibre'
    end
    it 'should update the color attribute' do
      auto.update(color: 'Blue')
      auto.color.should eql 'Blue'
    end
    it 'should update the make attribute' do
      auto.update(make: 'Dodge')
      auto.make.should eql 'Dodge'
    end
    it 'should update the year attribute' do
      auto.update(year: 2009)
      auto.year.should eql 2009
    end

    context "with all parameters" do
      it 'should takes four parameters and changes the entire Automobile object' do
        auto.update(model: 'Explorer', color: 'Silver', make: 'Ford', year: 1998)
        auto.model.should eql 'Explorer'
        auto.color.should eql 'Silver'
        auto.make.should eql 'Ford'
        auto.year.should eql 1998
      end
    end
  end

  describe "#build" do
    it "records the auto when I build it" do
      auto = Automobile.build(model: 'Mustang', color: 'Red', make: 'Ford', year: 2007)
      expect(Automobile.all_autos).to include (auto)
      expect(Vehicle.all_vehicles).to include (auto)
    end

    it "should increment the Vehicle count" do
      expect{Automobile.build model: :honda, color: :blue, make: 'Civic', year: 2013}.to change{Vehicle.count}.from(1).to(2)
    end
  end
end

# command rspec automobile_spec.rb --format nested
