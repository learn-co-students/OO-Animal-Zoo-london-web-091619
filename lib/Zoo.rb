require "pry"

class Zoo
    # getter method for name and location
    attr_reader :name, :location

    # a class variable to keep track of every instance 
    @@all = []

    # set a constructor method for name and locstion
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    #a class method that will return all zoo instances
    def self.all
        @@all
    end

    #a method to return all animals in the zoo
    def animals
        Animals.all.select { |animal| animal.zoo == self }
    end

    #method that returns each species within the zoo 
    def animal_species
        Animals.uniq.select { |animal| animal.species }
    end

    #method to return animals of that species
    def find_by_species(species)
        Animals.select {|animal| animal.species == species }
    end

    #method that returns animals with nicknames
    def animal_nicknames
        Animals.map { |animal| animal.nickname }
    end

    #a class method that will return all the zoos within a location
    def self.find_by_location(location)
        Zoo.all.select { |zoo| zoo.location == self}
    end

end
