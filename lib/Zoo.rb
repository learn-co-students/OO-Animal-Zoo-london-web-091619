class Zoo

    attr_reader :name, :location

    @@all = [ ]


    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end


    def animals
        Animal.all.select { |a| a.zoo == self}
    end

    def animal_species 
        #should return an array of all the species (as strings) of the animals in the zoo.
        animals.map { |a| a.species}.uniq
    end

    def find_by_species(species)
        animals.map { |a| a.species}.uniq
    end

    def animal_nicknames        
        animals.map { |a| a.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select { |z| z.location == location}
    end

end
