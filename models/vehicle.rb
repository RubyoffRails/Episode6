class Vehicle < Automobile 
  
  @@vehicles = []
  vehicle = Vehicle.new
  @@vehicles.push(vehicle)


  def filter?
    vehicle = Vehicle.new
    if vehicle.color == "blue" && vehicle.make == "honda" && vehicle.model = "accord"
  end

end

class Motorcycle < Vehicle
  def number_of_tires
    number_of_tires = 2
  end
end









# Tiger Assignment
# ----------------

# 1. Create a Vehicle class that automobile inherits from
# 2. Create a Motorcycle class that inherits from vehicle
# 3. Show the motorcycle class overriding the vehicle's class method for number of tires


