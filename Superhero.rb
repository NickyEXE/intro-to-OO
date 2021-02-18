require 'pry'

class Superhero

  attr_reader :secret_name, :powers, :universe, :costume_color
  attr_writer :name, :costume_color
  attr_accessor :power_level

  def initialize(name, secret_name, powers, power_level, universe, costume_color = "yellow")
    @name = name
    @secret_name = secret_name
    @powers = powers
    @power_level = power_level
    @universe = universe
    @costume_color = costume_color
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

  def thanos
    puts "mr stark, I don't feel so good"
  end

  def introduce
    puts "Hello my name is #{@name}. My alias is #{@secret_name}."
    puts "I have #{@powers}. My power level is #{@power_level}."
    puts "I'm from #{@universe}. My costume is #{@costume_color}."
  end
end

sg = Superhero.new(
  "Doreen Green",
  "Squirrel Girl",
  "The proportionate speed and strength of a Squirrel",
  9999,
  "Marvel",
  "Green and Brown"
)
wolverine = Superhero.new("Logan", "Wolverine", "Long Nails", 5, "Marvel")
she_hulk = Superhero.new("Jennifer Walters", "She-Hulk", "Law Degree", 3, "Marvel", "Suit")
booster_gold = Superhero.new("Michael Carter", "Booster Gold", "Stole stuff from the future", 4, "DC", "Yellow, Blue")
wiccan = Superhero.new("Billy Kaplan", "Wiccan", "Reality Warping", 6, "Marvel", "Red and Black")
robin = Superhero.new("Dick Grayson", "Robin", "Did circus", 6, "DC", "Red, Green, Yellow")
mermaid_man = Superhero.new("Ernie", "Mermaid Man", "Smells evil", 2, "Bikini Bottom Extended Universe", "Yellow and black")
barnacle_boy = Superhero.new("Tim", "Barnacle Boy", "Unknown", 1, "Bikini Bottom Extended Universe")
