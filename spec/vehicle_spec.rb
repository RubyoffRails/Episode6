require 'spec_helper'

describe Vehicle do
	
	it "tracks the number of vehicles created" do
		Motorcycle.new.should change{@@vehicles_made}.by(1)
	end
end