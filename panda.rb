class Vehicle
  @@wheels = 4
  attr_accessor :color, :make, :model
  
  def initialize(color, make, model)
    @color = color
    @make = make
    @model = model
  end

  def update(hash)
      unless hash[:color].nil?
        @color = hash[:color]
      end
      unless hash[:make].nil?
        @make = hash[:make]
      end
      unless hash[:model].nil?
        @model = hash[:model]
      end
  end

  def wheels
    "This vehicle has #{@@wheels} wheels."
  end
end

automobile = Vehicle.new("Red", "Porsche", "911")
puts automobile.wheels
puts "Created an automobile with the following information:
Make: #{automobile.make}
Model: #{automobile.model}
Color: #{automobile.color}"

update_hash = { :color => "Green", :make => "Toyota", :model => "Tacoma" } 
automobile.update(update_hash)
puts "Updated the automobile's make model and color:
Make: #{automobile.make}
Model: #{automobile.model}
Color: #{automobile.color}"

automobile.update({:color => "Black"})
puts "Updated the automobile's color only
Make: #{automobile.make}
Model: #{automobile.model}
Color #{automobile.color}"
