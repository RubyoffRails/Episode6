class Vehicle
end

describe Vehicle do
  it "should track all the vehicles made" do
    @@vehicles = []
    vehicle = Vehicle.new
    @@vehicles.push(vehicle)
    @@vehicles.length.should eq(1)
  end

  it "should filter blue honda accords" do
    vehicle = Vehicle.new
    vehicle.filter?
  end
end





# Eagle Assignment
# ----------------

# 1. Create a class variable (@@) in the Vehicle that tracks all vehicles mde
# 2. Create a class method that let's you filter the vehicles to only blue honda accords (using our enuerable filters)
# 3. Do it all using TDD (of course!)