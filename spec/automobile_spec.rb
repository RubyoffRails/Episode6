require 'rspec'
require_relative "../models/automobile"
require_relative "../models/motorcycle"
require_relative "../models/vehicle"

describe Automobile do
  subject = Automobile.new({color: "black", 
                            make: "GMC", 
                            model: "Sierra", 
                            year: 2000 })
                            
  it "should equal car2 if all the attributes are identical" do
    car2 = Automobile.new({color: "black", 
                            make: "GMC", 
                            model: "Sierra", 
                            year: 2000 })
    subject.should eq(car2)
  end        
  
  it "should not equal car2 if all the attributes are not identical" do
    car2 = Automobile.new({color: "green", 
                            make: "GMC", 
                            model: "Sierra", 
                            year: 2000 })
    subject.should_not eq(car2)
  end                             
  
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


describe Vehicle do
    
  it "should pick the blue honda out of the stack of vehicles" do
    moto =  { color: "orange", make: "KTM", model: "SX", year: 2012 }
    Motorcycle.new(moto)
    honda = { color: "blue", make: "Honda", model: "Accord", year: 2007 }
    Automobile.new(honda)   
    truck  = { color: "red", make: "Ford", model: "F-150", year: 2011 }
    Automobile.new(honda)   
    [[:color, "blue"], [:make, "Honda"], [:model, "Accord"]].all? { |key, value| Vehicle.find_blue_hondas[0][key] == value}.should be_true
  end
end