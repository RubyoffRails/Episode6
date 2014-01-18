require_relative('../models/Vehicle.rb')
require 'rspec'

describe Vehicle do
  carspecs = {tires: 4, wheels: 4, colour: "Red", make: "Shiznit", year: "1970", model: "Skoda"}
  myvehicle = Vehicle.new(carspecs)

  it 'should return number of tires' do
    myvehicle.tires.should be_a_kind_of Numeric
  end

  it "should have a model" do
    myvehicle.model.should == "Skoda"
    end

    it 'should return the number of wheels' do
      myvehicle.wheels.should be_a_kind_of Numeric
    end

    it "should have a colour" do
      myvehicle.colour.should == carspecs[:colour]
    end

    it "should have a make" do
      myvehicle.make.should == carspecs[:make]
    end

    it "should have a year" do
      myvehicle.year.should == carspecs[:year]
    end

    it "should update specs" do
      newspecs = {tires: 4, wheels: 4, colour: "Yellow", make: "Toyota", model: "Corolla", year: "2003"}
      myvehicle.update(newspecs)
      myvehicle.tires.should == newspecs[:tires]
      myvehicle.wheels.should == newspecs[:wheels]
      myvehicle.colour.should == newspecs[:colour]
      myvehicle.make.should == newspecs[:make]
      myvehicle.model.should == newspecs[:model]
      myvehicle.year.should == newspecs[:year]
    end
  end
  
