require 'rspec'
require_relative('../models/automobile.rb')


describe 'Automobile' do
  carspecs = {colour: "Red", make: "Skoda", model: "Shiznit", year: "1970"}
  mycar = Automobile.new(5, carspecs)

  it 'should return the number of wheels' do
    mycar.wheels.should be_a_kind_of Numeric
  end

  it "should have a colour" do
    mycar.colour.should == carspecs[:colour]
  end

  it "should have a make" do
    mycar.make.should == carspecs[:make]
  end

  it "should have a model" do
    mycar.model.should == carspecs[:model]
  end

  it "should have a year" do
    mycar.year.should == carspecs[:year]
  end

  it "should update specs" do
    newspecs = {colour: "Yellow", make: "Toyota", model: "Corolla", year: "2003"}
    mycar.update(newspecs)
    mycar.colour.should == newspecs[:colour]
    mycar.make.should == newspecs[:make]
    mycar.model.should == newspecs[:model]
    mycar.year.should == newspecs[:year]
  end

end