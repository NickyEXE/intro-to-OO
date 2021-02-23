require 'pry'

class Kaiju

  attr_reader :houses_stomped, :cities_destroyed

  def initialize(name, powers, cities_destroyed)
    @name, @powers, @cities_destroyed = name, powers, cities_destroyed
    @houses_stomped = 0
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
ghidora = Kaiju.new("Ghidora", "Three heads, sitcom potential", ["Tokyo", "Sacramento"])

binding.pry
