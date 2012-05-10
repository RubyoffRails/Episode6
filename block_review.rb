require 'rubygems'
require 'bundler/setup'

require_relative 'db/setup'
Dir.glob("./**/*.rb").each {|f| require f}

puts "Serenity now!"
