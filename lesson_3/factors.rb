def factors(number)
  divisor = number
  factors = []
  begin
    while divisor > 0 do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end
  end until divisor == 0
  factors
end

# puts factors(-21)
puts factors(0)
puts factors(21)
