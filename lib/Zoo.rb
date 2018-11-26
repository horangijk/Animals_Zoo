class Zoo
  attr_accessor :name, :location
  @@all = []
  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end
  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end
  def animal_species
    # species = []
    species = self.animals.collect do |animal|
      animal.species
    end
    species.uniq
  end
  def find_by_species(species)
    self.animals.select do |animal|
      animal.species == species
    end
  end
  def animal_nicknames
    self.animals.collect do |animal|
      animal.nickname
    end
  end
  def self.find_by_location(location)
    Zoo.all.select { |zoo| zoo.location == location }
  end
end
