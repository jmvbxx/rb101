class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    self.name = name
    self.age = age * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and they're #{age} in dog years"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new('Sparky', 4)
puts sparky.age
puts sparky
p sparky

sparky.human_years
