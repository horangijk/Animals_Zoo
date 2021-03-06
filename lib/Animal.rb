class Animal
  attr_reader :species, :nickname, :zoo
  attr_accessor :weight
  @@all = []
  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_by_species(animal_species)
      Animal.all.select do |animal|
        # want to determine if the species of array is the species that we're calling
        animal.species == animal_species
      end
  end
end
