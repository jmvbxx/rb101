# example 4
a = 1

loop do
  b = 2

  loop do
    c = 3
    puts a
    puts b
    puts c
    break
  end

  puts a
  puts b
  puts c
  break
end

puts a
puts b
puts c

# example 5 (variable shadowing)
n = 10

[1, 2, 3].each do |n|
  puts n
end

# Notes:
# `puts n` will use the block parameter `n` and ignore the outer scoped
# local variable

n = 10

1.times do |n|
  n = 11
end

puts n

# Notes:
# `puts n` returns 10