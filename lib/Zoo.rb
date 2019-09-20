class Zoo
   
    @@all = []
    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname}
    end

    def self.find_by_location(location)
        Zoo.all.select{|zoo| zoo.location == location}
    end
end