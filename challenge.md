# For your exercise

## [x] Define a new class, Kaiju, that

- [x] Is initialized with a Kaiju's name, powers, and latest city destroyed
- [x] Can rewrite the latest city destroyed as it destroys new cities
- [x] Can roar (puts an onomatopoeia of your choice out into the console when #roar is called on it)
- [x] Can stomp (puts out "KAIJU_NAME has stomped a new house" when #stomp is called on it)
Bonus:
- [x] Keeps track of the amount of houses that have been stomped and puts "KAIJU_NAME has now stomped NUMBER_OF_HOUSES houses"


## Challenge part 2
- [] Make a `#roar_and_stomp` method that calls the `#roar` method and then the `#stomp` method.
- [] Make a class method `.blue_oyster_cult` that puts `Oh no, they say he's got to go.` then puts `Go go Godzilla!`
- [] Make the class Kaiju keep track of all the Kaiju created
- [] Make a `.all` method for Kaiju that shows all the Kaiju instances created
- [] Make a method `.total` that gives you the number of created Kaiju
### Bonus
- [] Make Kaiju instead initialize with a name, powers, and then an array of all the cities it has destroyed so far, called `cities_destroyed`
- [] Make a method called `#destroy_city(city)` that adds a new city to the kaiju's list of `cities_destroyed`
- [] Make a method `.houses_destroyed` that shows the total count of houses that were stomped on.
- [] Make a method `.cities_destroyed` that shows all the cities that have been destroyed so far

## Challenge part 3
- [] Make `houses_stomped` an optional argument that defaults to zero in your initialize
- [] Make a method called `.new_tokyo_destroyer` that takes in only a name and a power and initializes a monster that has destroyed Tokyo.
- [] Make a `.new_with_hash(hash)` method that you can call this on to create a new monster:
```ruby
Kaiju.new_with_hash({name: "Godzooky", power: "Can hang out with teens, tall uncle, glides", cities_destroyed: ["Traverse City"]})
Kaiju.new_with_hash({name: "Mothra", power: "Flight, loogies, heart", cities_destroyed: ["Tokyo", "Nice"], houses_stomped: 4})
```

### Bonus
- [] Make a `#mecha` instance method that creates a copy of the Kaiju it's called on, except with "Mecha-" in front of their name, and that hasn't destroyed any cities. For example, given Godzilla:
```ruby
godzilla = Kaiju.new("Godzilla", "Atomic Breath", ["Tokyo", "Newark"])
mechagodzilla = godzilla.mecha
# => <Kaiju:0x00007ff034335988 @name="Mecha-Godzilla", @powers="Atomic Breath", @cities_destroyed=[], @houses_stomped=0 >
```
- [] Make a `#rebuild(city)` instance method that takes in a city name and then removes it from that Kaiju's list of destroyed cities.
- [] Make an `.enemies(city)` method that takes in a city name and returns an array of Kaiju that have destroyed it.
- [] Make an `.avenge(city)` method that takes in a city name and deletes every Kaiju that has destroyed that city.
- [] Make a `.rebuild(city)` class method that takes in a city name and removes it from every Kaiju's list of destroyed cities
