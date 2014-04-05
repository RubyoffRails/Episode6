require './models/auto'
require 'rspec'

describe Automobile do
  it "should have a color" do
    auto = Automobile.new(color: "Red")
    puts auto.inspect
  end
  it "should have a make" do
    auto = Automobile.new(make: "Ford")
    puts auto.inspect
  end
  it "should have a model" do
    auto = Automobile.new(model: "Fiesta")
    puts auto.inspect
  end
  it "should have a year made" do
    auto = Automobile.new(year: 2014)
    puts auto.inspect
  end
  it "should be able to take all arguments at once" do
    auto = Automobile.new(color: "Red", make: "Ford", model: "Fiesta", year: 2014)
    puts auto.inspect
  end
  it "should have 4 the wheels" do
    Automobile.number_of_wheels(4).should eq(4)
    puts "The automobile has 4 wheels!"
  end
  it "should not have 300 wheels" do
    Automobile.number_of_wheels(300).should_not eq(4)
    puts "The automobile doesn't have 300 wheels!"
  end
end

describe Motorcycle do
  it "should have 2 wheels" do
    Motorcycle.number_of_wheels(2).should eq(2)
    puts "The motorcycle has 2 wheels!"
  end
  it "should not have 4 wheels" do
    Motorcycle.number_of_wheels(4).should_not eq(2)
    puts "The motorcycle doesn't have 4 wheels!"
  end
end