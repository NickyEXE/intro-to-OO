# For your exercise

## Define a new class, Kaiju, that

- [] Is initialized with a Kaiju's name, powers, and latest city destroyed
- [] Can rewrite the latest city destroyed as it destroys new cities
- [] Can roar (puts an onomatopoeia of your choice out into the console when #roar is called on it)
- [] Can stomp (puts out "KAIJU_NAME has stomped a new house" when #stomp is called on it)
Bonus:
- [] Keeps track of the amount of houses that have been stomped and puts "KAIJU_NAME has now stomped NUMBER_OF_HOUSES houses"

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
