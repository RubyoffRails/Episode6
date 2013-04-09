require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./models/*.rb").each {|f| require f}

auto = Automobile.new(color: "blue", make: "Ford", model: "Explorer", year: "2000")

puts "Example automobile: #{auto.to_s}"
puts "An automobile has #{Automobile.number_of_wheels} tires."
puts "A motorcycle has #{Motorcycle.number_of_wheels} tires."
puts
puts "Serenity now!"
