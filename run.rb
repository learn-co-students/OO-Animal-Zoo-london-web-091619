require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("zoolology", "london")
z2 = Zoo.new("biology", "reading")

a1 = Animal.new("dog", 40, "Buster", z1)
a2 = Animal.new("dog", 50, "Snoop", z2)
a3 = Animal.new("cat", 33, "Tom Jones", z1)



binding.pry
puts "done"
