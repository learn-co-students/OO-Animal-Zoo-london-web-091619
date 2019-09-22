class Zoo

attr_accessor :name
attr_reader :location

@@all = []

def initialize(name,location)
  @name = name
  @location = location
  @@all << self
end

def self.all
@all
end

def animals
Animal.all.select{|animal| animal.zoo == self}
end

def animal_species
  species_array = animals.map(&:species)
  species_array.uniq
end

def animal_nicknames
  animals.map(&:nickname)
end

def find_by_species(species)
  animals.select{|animal| animal.species == species}
end

def self.find_by_location(location)
  Zoo.all.select{|zoo| zoo.location == self}
end

end
