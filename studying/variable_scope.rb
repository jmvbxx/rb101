# example 1
a = 1

loop do
  puts a
  a += 1
  break
end

puts a

# Notes:
# inner scope can access outer scope variable
# you can change variables from an inner scope and have that change affect
# the outer scope

# example 2
loop do
  b = 1
  break
end

puts b

# Notes:
# the outer scope does not have a `b` variable

# example 3
2.times do
  c = 'hi'
  puts c
end

loop do
  puts c
  break
end

puts c

# Notes:
# peer blocks cannot reference variables initialized in other blocks
