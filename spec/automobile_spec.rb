require 'rspec'
require_relative('../models/automobile.rb')


describe 'Automobile' do
    carspecs = {wheels: 4, colour: "Red", make: "Shiznit", year: "1970", model: "Skoda"}
    myauto = Vehicle.new(carspecs)

    it "should have a model" do
      myauto.model.should == "Skoda"
    end

    it 'should return the number of wheels' do
      myauto.wheels.should be_a_kind_of Numeric
    end

    it "should have a colour" do
      myauto.colour.should == carspecs[:colour]
    end

    it "should have a make" do
      myauto.make.should == carspecs[:make]
    end

    it "should have a year" do
      myauto.year.should == carspecs[:year]
    end

    it "should update specs" do
      newspecs = {wheels: 4, colour: "Yellow", make: "Toyota", model: "Corolla", year: "2003"}
      myauto.update(newspecs)
      myauto.tires.should == newspecs[:tires]
      myauto.wheels.should == newspecs[:wheels]
      myauto.colour.should == newspecs[:colour]
      myauto.make.should == newspecs[:make]
      myauto.model.should == newspecs[:model]
      myauto.year.should == newspecs[:year]
    end
  end