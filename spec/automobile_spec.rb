require "rspec"
require_relative "../models/automobile"

describe Automobile do
  
  subject = Automobile.new({color: "red", make: "VW", model: "GTI", year: "2008"})
  
  subject2 = Automobile.new({color: "red", make: "VW", model: "GTI", year: "2008"})
  subject3 = Automobile.new({color: "green", make: "Land Rover", model: "Discovery", year: "2006"})
  
  it "should match 2 cars that are the same" do
    subject.==(subject2).should be_true #WTF!!!! I CAN SEE THEY ARE THE SAME BUT THE DANG OBJECT ADDRESS ISNT!!!!
  end
  
  it "should not match 2 cars that are not the same" do
    subject.should_not eq(subject3)
  end
  
  it "should have 4 tires" do
    Automobile.tires.should eq(4)
  end

  it "should be green" do
    subject.color = "green"
    subject.color.should eq("green")
  end

  it "should be a Volvo" do
    subject.make = "Volvo"
    subject.make.should eq("Volvo")
  end
  
  it "should be a S40 R" do
    subject.model = "S40 R"
    subject.model.should eq("S40 R")
  end

  it "should be a 2006" do
    subject.year = "2006"
    subject.year.should eq("2006")
  end
  


end