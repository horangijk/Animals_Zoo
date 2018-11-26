require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("Central Park Zoo", "Manhattan")
zoo3 = Zoo.new("Bronx Zoo 2", "Bronx")
animal1 = Animal.new("owl", 5, "hedwig", zoo1)
animal2 = Animal.new("rat", 3, "wormtail", zoo1)
animal3 = Animal.new("rat", 2, "scabbers", zoo1)
animal4 = Animal.new("cat", 6, "prof mcgonagall", zoo2)
animal5 = Animal.new("dog", 10, "padfoot", zoo2)
animal6 = Animal.new("cat", 7, "crookshanks", zoo2)

binding.pry
puts "done"
