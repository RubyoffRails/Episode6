require 'rubygems'
require 'bundler/setup'

#require_relative 'db/setup'
#Dir.glob("./**/*.rb").each {|f| require f}

class Automobile 
 
  def wheels
     "4"
  end
end

puts "number of wheels on your car: " + Automobile.new.wheels


puts "Serenity now!"
