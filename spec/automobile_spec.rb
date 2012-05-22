require 'rspec'
require_relative "../models/automobile"

describe Automobile do
  subject = Automobile.new({color: "black", 
                            make: "GMC", 
                            model: "Sierra", 
                            year: 2000 })
  
	it "should have four wheels" do
		Automobile.wheels.should eq(4)
	end
	
	it "should be the color green when set to green" do
	  subject.color = ("green")
	  subject.color.should eq("green")
	end

	it "should be the make Ford when set to Ford" do
	  subject.make = ("Ford")
	  subject.make.should eq("Ford")
	end
	
	it "should be the model Sierra when set to Sierra" do
	  subject.model = ("Sierra")
	  subject.model.should eq("Sierra")
	end

	it "should be the year 2005 when set to 2005" do
	  subject.year = (2005)
	  subject.year.should eq(2005)
	end

end