require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./models/*.rb").each { |f| require f }

puts "Wheel count is #{Automobile.wheels}"

auto_hash = { color: "black", 
              make: "GMC", 
              model: "Sierra", 
              year: 2000 }

das_auto = Automobile.new(auto_hash)
puts das_auto.inspect
puts "das_auto is a #{das_auto.color} #{das_auto.make} #{das_auto.model} #{das_auto.year}"
das_auto.color = "green"
puts "das_auto updated color: #{das_auto.color}"


auto_hash = { color: "sparkle black", 
              make: "Ford", 
              model: "F-150", 
              year: 2011 }

zwei_auto = Automobile.new(auto_hash)
puts zwei_auto.inspect
puts "zwei_auto is a #{zwei_auto.color} #{zwei_auto.make} #{zwei_auto.model} #{zwei_auto.year}"



