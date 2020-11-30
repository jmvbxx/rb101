# # example one
# class Animal
#   def speak
#     'Hello!'
#   end
# end
#
# class GoodDog < Animal
#   def speak
#     super + ' from the GoodDog class'
#   end
# end
#
# sparky = GoodDog.new
# sparky.speak

# more common example
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(colour)
    super
    @colour = colour
  end
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

bruno = GoodDog.new('brown')
BadDog.new(2, 'Bear')
