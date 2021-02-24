require 'pry'

class Superhero

  attr_reader :secret_name, :powers, :costume_color
  attr_writer :costume_color
  attr_accessor :power_level

  @@all = []

  def initialize(name, secret_name, powers, power_level, universe, costume_color = "yellow")
    @name = name
    @secret_name = secret_name
    @powers = powers
    @power_level = power_level
    @universe = universe
    @costume_color = costume_color
    self.save
  end

  def self.create_from_hash(hash)
    self.new(hash[:name], hash[:secret_name], hash[:powers], hash[:power_level], hash[:universe], hash[:costume_color])
  end

  def self.create_from_array(array)
    array.each{|superhero| self.create_from_hash(superhero)}
  end

  def save
      @@all << self if validate?
  end

  def self.all
    @@all
  end

  def self.create_marvel_superhero(name, secret_name, powers, power_level, costume_color = "yellow")
    self.new(name, secret_name, powers, power_level, "Marvel", costume_color)
  end

  def self.count
    self.all.size
  end

  def self.find_by_secret_name(secret_name)
    self.all.find do |instance|
      instance.secret_name == secret_name
    end
  end

  def self.hi
    puts "Superhero class says hi"
  end

  # # getter/reader method
  def name
    @name.upcase
  end

  # # setter/writer method
  def name=(name)
    puts "hello"
    @name = name.upcase
  end

  #  this is the same as writing attr_reader :secret_name
  # # getter/reader method
  # def secret_name
  #   @secret_name
  # end

  # # setter/writer method
  #  this is the same as writing attr_writer :secret_name
  # def secret_name=(secret_name)
  #   @secret_name = secret_name
  # end

  def snap
    self.thanos
    self.power_level = 0
  end

  def thanos
    puts "#{self.secret_name} says:"
    puts "mr stark, I don't feel so good"
  end

  def introduce
    puts "Hello my name is #{@name}. My alias is #{@secret_name}."
    puts "I have #{@powers}. My power level is #{@power_level}."
    puts "I'm from #{@universe}. My costume is #{@costume_color}."
  end

  private

  def validate?
    if (@power_level >= 10000)
      puts "#{@secret_name}'s power level must be less than 10000. Update and then call save."
    elsif @name.length > 35
      puts "#{@secret_name}'s name is too long. It must be 35 characters or less. Update and then call save."
    elsif @name == "Wade Wilson"
      puts "You're an anti-hero at best and you know it. You do not belong in the Superhero class."
    else
      return true
    end
  end

end


# seeds
Superhero.new(
  "Doreen Green",
  "Squirrel Girl",
  "The proportionate speed and strength of a Squirrel",
  9999,
  "Marvel",
  "Green and Brown"
)
Superhero.new(
  "Logan",
  "Wolverine",
  "Long Nails",
  5,
  "Marvel"
  )
Superhero.new(
  "Jennifer Walters",
  "She-Hulk",
  "Law Degree",
  3,
  "Marvel",
  "Suit"
  )
Superhero.new(
  "Michael Carter",
  "Booster Gold",
  "Stole stuff from the future",
  4,
  "DC",
  "Yellow, Blue"
  )
# Superhero.new(
#   "Billy Kaplan",
#   "Wiccan",
#   "Reality Warping",
#   6,
#   "Marvel",
#   "Red and Black"
#   )
Superhero.new(
  "Dick Grayson",
  "Robin",
  "Did circus",
  6,
  "DC",
  "Red,
  Green,
  Yellow"
  )
Superhero.new(
  "Ernie",
  "Mermaid Man",
  "Smells evil",
  2,
  "Bikini Bottom Extended Universe",
  "Yellow and black"
  )
Superhero.new(
  "Tim",
  "Barnacle Boy",
  "Unknown",
  1,
  "Bikini Bottom Extended Universe",
  "Red, Blue"
  )

captain_marvel = {
  power_level: 20,
  universe: "Marvel",
  costume_color: "Red, Blue",
  name: "Carol Danvers",
  secret_name: "Captain Marvel",
  powers: "Flight, Power",
}

young_avengers = [
  {
    name: "Kate Bishop",
    secret_name: "Hawkeye",
    powers: "Arrows",
    power_level: 1,
    universe: "Marvel",
    costume_color: "Purple"
  },
  {
    name: "Loki",
    secret_name: "Loki",
    powers: "Lies, Illusions",
    power_level: 6,
    universe: "Marvel",
    costume_color: "Green"
  },
    {
      name: "America Chavez",
      secret_name: "Miss America",
      powers: "Punches through dimensions",
      power_level: 5,
      universe: "Marvel",
      costume_color: "Denim"
    }
]

Superhero.create_marvel_superhero(
  "Billy Kaplan",
  "Wiccan",
  "Reality Warping",
  6,
  "Red and Black"
  )

deadpool = Superhero.new("Wade Wilson", "Deadpool", "Regenerates, breaks fourth wall, is handsome", 100000, "Marvel", "red")
deadpool.power_level = 4
deadpool.save

# barnacle_boy.thanos
# Superhero.hi
binding.pry
