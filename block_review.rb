require 'rubygems'
require 'bundler/setup'

#require_relative 'db/setup'
Dir.glob("./models/*.rb").each {|f| require f}

puts "Serenity now!"
