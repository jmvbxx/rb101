class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
  end

  def speak
    "#{name} says 'Arf'!"
  end

  def change_info(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall"
  end

  # class method
  def self.what_am_i
    "I'm a GoodDog class"
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# fido = GoodDog.new('Fido')

puts sparky.speak
# puts fido.speak

puts sparky.info
sparky.name = 'SparkyRena'
puts sparky.info

sparky.change_info('SparkyRena', '24 inches', '45 lbs')
puts sparky.info

GoodDog.what_am_i
p sparky.what_is_self
