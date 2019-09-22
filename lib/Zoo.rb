class Zoo
  attr_reader :name, :location

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_location(location)
    all.select { |zoo| zoo.location.eql?(location) }
  end

  def save
    self.class.all << self
  end

  def initialize(name:, location:)
    @name = name
    @location = location
    save
  end

  def adopt_animal(animal)
    animal.zoo = self
  end

  def animals
    Animal.all.select { |animal| animal.zoo.eql?(self) }
  end

  def animal_species
    animals.map(&:species).uniq
  end

  def animal_nicknames
    animals.map(&:nickname)
  end

  def find_by_species(species)
    animals.select { |animal| animal.species.eql?(species) }
  end
end
