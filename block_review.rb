require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./models/*.rb").each { |f| require f }

# Panda

puts "Wheel count is #{Automobile.wheels}"


auto_hash = { color: "green", 
              make: "Ford", 
              model: "F-150", 
              year: 2011 }
              
das_auto = Automobile.new(auto_hash)
puts das_auto.inspect
puts "das_auto is a #{das_auto.color} #{das_auto.make} #{das_auto.model} #{das_auto.year}"
das_auto.color = "black"
puts "das_auto updated color: #{das_auto.color}"


auto_hash = { color: "black", 
              make: "Ford", 
              model: "F-150", 
              year: 2011 }

zwei_auto = Automobile.new(auto_hash)
puts zwei_auto.inspect
puts "zwei_auto is a #{zwei_auto.color} #{zwei_auto.make} #{zwei_auto.model} #{zwei_auto.year}"


# Tiger

puts "Vehicle Wheels: #{Vehicle.wheels}"
puts "Automobile Wheels: #{Automobile.wheels}"
puts "Motorcycle Wheels: #{Motorcycle.wheels}"

puts "Is it true that the two objects have exactly the same attributes? #{das_auto == zwei_auto ? "Yes" : "No"}"

# Eagle

moto =  { color: "orange", 
          make: "KTM", 
          model: "SX", 
          year: 2012 }
           
Motorcycle.new(moto)
                    
honda = { color: "blue", 
          make: "Honda", 
          model: "Accord", 
          year: 2007 }

Automobile.new(honda)          
          
puts "Motorcycle: #{Motorcycle.vehicles}\n\n"
puts "Automobile: #{Automobile.vehicles}\n\n"

puts "Only blue hondas: #{Vehicle.find_blue_hondas}"
