class Animal
  def speak
    'Hello!'
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def speak
    "#{self.name} says 'Woof!'"
  end
end

class Cat < Animal
end

sparky = GoodDog.new('Sparky')
paws = Cat.new

puts sparky.speak
puts paws.speak