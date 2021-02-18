require 'pry'

class Kaiju

  attr_writer :latest_city_destroyed
  attr_reader :houses_stomped

  def initialize(name, powers, latest_city_destroyed)
    @name = name
    @powers = powers
    @latest_city_destroyed = latest_city_destroyed
    @houses_stomped = 0
  end

  def roar
    puts "Rawr XD ^_^ meow"
  end

  # when they're initialized, a kaiju has not stomped on any houses
  # when they stomp on a house,
  # we increment the number of houses they stomped on


  def stomp
    @houses_stomped += 1
    puts "#{@name} has now stomped #{@houses_stomped} houses."
  end

end

godzilla = Kaiju.new("Godzilla", "Atomic Breath", "Tokyo")
ghidora = Kaiju.new("Ghidora", "Three heads, sitcom potential", "Tokyo")

binding.pry
