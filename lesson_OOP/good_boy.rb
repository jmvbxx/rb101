module Speak
  def speak(sound)
    puts sound
  end
end

class GoodBoy
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodBoy.new
sparky.speak('Woof!')
bob = HumanBeing.new
bob.speak('Hello')

puts "---GoodBoy ancestors---"
puts GoodBoy.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors
