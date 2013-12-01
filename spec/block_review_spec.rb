class Automobile
end

class Vehicle
end

class Motorcycle
end

describe Automobile do 
	it "should have a attributes" do
		@color = color
		@make = make
		@model = model
		@year = year
	end
	it "should have 4 tires" do
		number_of_tires = 4
	end
end

describe Vehicle do
	it "should have a count" do
		#not sure what to do here
	end
end

describe Motorcycle do
	it "should have two tires" do
		number_of_tires == 2
	end
end
