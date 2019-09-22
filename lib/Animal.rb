
class Animal
    #getter and setter methods for 
    attr_accessor :weight
    attr_reader :species, :nickname, :zoo

    #class variable to track every instance
    @@all = []

    #set a constructor method for species, weight, nickname and zoo
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    # need a class method that tracks all animal instances
    def self.all
        @@all
    end

    #set a class method that finds and returns all the animal species
    def self.find_by_species(species)
        @@all.select { |animal| animal.species == species }
    end

end
