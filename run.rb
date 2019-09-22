require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new("Big Zoo", "France")
animal1 = Animal.new("Tiger", 1000000000,"Johnny Stripes","Big Zoo")

binding.pry
puts "done"
