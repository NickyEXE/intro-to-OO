Intro to Object Orientation
===

## SWBATs
- [ ] Explain the benefits of Object Oriented Programming
- [ ] Explain the difference between a class and an instance
- [ ] Create instance and class methods
- [ ] Understand how to use the `self` keyword
- [ ] Define attribute readers and writers using `attr_` macros
- [ ] Explain the difference between local variables, instance variables, and class variables
- [ ] Get more practice with array methods (`each`, `map`, `select`, `find`)

## Outline
- Objects: Things that encapsulate both data and behavior, usually for a common group of things
-  Method: A behavior that an object has
- Discuss the benefits of OOP
- Discuss classes and instances
  - describe methods as the 'interface' for our class
  - "hi" is the instance, String is the Class
  - 1 is the instance, Integer is the Class
- Demonstrate class methods and instance methods on in-built Ruby classes (String, Array)
  - methods as sending messages
  - different approaches for sending messages (dot notation, `send`)
  - Monkey patching
    - Modifying built in ruby classes
- Build a class using the deliverables below
  - `new` and `initialize`
  - instance methods
  - instance variables
  - `attr_` macros


## Discussion Questions
- What does the phrase "Everything is an object in Ruby" mean?
- What is an object?
- What are the benefits of Object Oriented Programming?
- What is the difference between a class and an instance?

## Deliverables

Here is a naive implementation of a clown class in Ruby using only a hash which stores key-value pairs.

```rb
clown = { name: "Krusty", age: 55, skills: "Drinking", fears: "Failure" }
```

Write an implementation of a clown class that meets the following requirements:

- can get the name, alias, powers,power level of a superhero, universe, costume color


- [x] can get the name, alias, powers,power level of a superhero, universe, costume color
- [x] can say hello and print out their details to the screen, heroically
"Hello my name is Doreen Green. My alias is Squirrel Girl. I have the proportionate speed and strength of a squirrel. I'm from Marvel. My costume is green and brown."
- [x] change powers and costume color
- [] can punch -> puts some fist emojis to the screen
*bonus*
- [] can show me all the superheroes that have been created
- [] can find a superhero based on their alias
