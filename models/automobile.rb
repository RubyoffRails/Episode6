automobile = {}
automobile[:color] = "white"
automobile[:make] = "mini"
automobile[:year] = 1999

class Vehicle
end

Automobile = Struct.new(:automobile) do
  def wheels(wheels)
    puts "has #{wheels} wheels"
  end
end

automobile = Automobile.new( {color: "Blue", make: "Mazda", year: 2010} )

puts "Automobile"
automobile.automobile.each do |key, value|
  puts "* #{key}: #{value}"  
end

puts "\nWheels"
puts "#{automobile.wheels(4)}"

