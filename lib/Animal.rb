class Animal
  attr_accessor :weight, :zoo
  attr_reader :nickname, :species

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(species:, weight:, nickname:)
    @species = species
    @weight = weight
    @nickname = nickname
    save
  end

  def self.find_by_species(species)
    all.select { |animal| animal.species.eql?(species) }
  end
end
