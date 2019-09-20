require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


zoo1 = Zoo.new("Zoo1", "France")
zoo2 = Zoo.new("Zoo2", "Spain")
zoo3 = Zoo.new("Zoo3", "Germany")

animal1 = Animal.new("Lion", 10, "Leo", zoo1)
animal2 = Animal.new("Cow", 20, "John", zoo1)
animal3 = Animal.new("Cow", 15, "joan", zoo2)

binding.pry
puts "done"
