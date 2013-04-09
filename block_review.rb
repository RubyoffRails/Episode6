require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./models/*.rb").each {|f| require f}

auto1 = Automobile.new(color: "white", make: "Ford", model: "Explorer", year: "2000")
auto2 = Automobile.new(color: "blue", make: "Honda", model: "Accord", year: "2009")
auto3 = Automobile.new(color: "blue", make: "Honda", model: "Accord", year: "2011")

puts "An automobile has #{Automobile.number_of_wheels} tires."
puts "A motorcycle has #{Motorcycle.number_of_wheels} tires."
puts
puts "Auto 1: #{auto1.to_s}"
puts "Auto 2: #{auto2.to_s}"
puts "Auto 3: #{auto3.to_s}"
puts
puts "All vehicles: #{Vehicle.Vehicles.inspect}"
puts "All blue Honda Accords: #{Vehicle.get_favorite_combo}"
puts
puts "Serenity now!"
