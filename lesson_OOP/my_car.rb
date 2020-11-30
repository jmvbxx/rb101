class MyCar
  attr_accessor :colour
  attr_reader :year

  def initialize(year, colour, model)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
  end

  def to_s
    "My car is a #{colour}, #{year}, #{@model}!"
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerated to #{@current_speed} kph"
  end

  def brake(number)
    @current_speed -= number
    puts "You slowed to #{@current_speed} kph"
  end

  def current_speed
    puts " You're going #{@current_speed} kph"
  end

  def shut_down
    @current_speed = 0
    puts "We're parked!"
  end

  def spray_paint(colour)
    self.colour = colour
    puts "Your car is now #{colour}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed

lumina.colour = 'black'
puts lumina.colour
puts lumina.year

lumina.spray_paint('red')
MyCar.gas_mileage(13, 351)

my_car = MyCar.new("2010", "silver", "Ford Focus")
puts my_car
