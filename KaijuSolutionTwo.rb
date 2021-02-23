require 'pry'

class Kaiju

  attr_reader :houses_stomped, :cities_destroyed

  @@all = []

  def initialize(name, powers, cities_destroyed)
    @name, @powers, @cities_destroyed = name, powers, cities_destroyed
    @houses_stomped = 0
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total
    self.all.count
  end

  def destroy_city(city)
    @cities_destroyed << city
  end

  def roar_and_stomp
    roar
    stomp
  end

  def self.houses_destroyed
    self.all.map{|kaiju| kaiju.houses_stomped}.sum
    # self.all.reduce(0){|accumulator, kaiju| accumulator + kaiju.houses_stomped}
  end

  def self.cities_destroyed
    self.all.map{|kaiju| kaiju.cities_destroyed}.flatten.uniq
  end

  def self.blue_oyster_cult
    puts "Oh no, they say he's got to go."
    puts "Go go Godzilla!"
  end

  def roar
    puts "Rawr XD ^_^ meow"
  end

  def stomp
    @houses_stomped += 1
    puts "#{@name} has now stomped #{@houses_stomped} houses."
  end

end

godzilla = Kaiju.new("Godzilla", "Atomic Breath", ["Tokyo", "Newark"])
godzilla.stomp
godzilla.stomp
ghidora = Kaiju.new("Ghidora", "Three heads, sitcom potential", ["Tokyo", "Sacramento"])
10.times {ghidora.stomp}

# Kaiju.cities_destroyed
binding.pry
