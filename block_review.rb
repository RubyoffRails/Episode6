require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./models/*").each {|f| require f}

auto1 = Auto.new(color: 'Blue', make: 'Honda', model: "Accord", year: '2007') #self
motor1 = Motor.new(color: 'Red', make: 'Yamaha', model: "Z9", year: '2012')
puts
puts "A car has #{Auto.wheels} wheels"
puts "A motorcycle has #{Motor.wheels} wheels"
puts
puts "Auto1: #{auto1.to_s}"
puts "Motor1: #{motor1.to_s}"
puts 
puts 'All Vehicles:'
puts Vehicle.vehicles
puts
puts 'Best car ever!!!'
puts Vehicle.favorite_car


