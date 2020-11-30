module Swimmable
  def swim
    'I can swim!'
  end
end

module Walkable
  def walk
    'I can walk!'
  end
end

module Climbable
  def climb
    'I can climb!'
  end
end

class Animal;
  include Walkable

  def speak
    "I'm an animal and I can speak!"
  end
end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new
fido = Animal.new

sparky.swim
neemo.swim
# paws.swim
fido.speak


puts "---Animal method lookup---"
puts Animal.ancestors
