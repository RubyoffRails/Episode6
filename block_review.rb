require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./**/*.rb").each {|f| require f}

puts "Serenity now!"

class Automobile < ActiveRecord::Base
	def initialize
		@color = color
		@make = make
		@model = model
		@year = year
	end

	def number_of_tires
		4
	end
end	

automobile = {color: "Black", make: "SUV", model: "Range Rover", year: 2013}
puts automobile

class Vehicle < Automobile
	@@count = Vehicle.count

	def blue_honda_accords
		#not sure here
	end
end

class Motorcycle < Automobile
	def number_of_tires
		2
	end
end

