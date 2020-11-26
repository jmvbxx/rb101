# countdown_1
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts 'Done'

# countdown_2
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts 'Done'

# countdown_3
x = gets.chomp.to_i

for i in 1..x do
  puts i
end

puts 'Done'

# countdown_4
x = [1, 2, 3, 4, 5]

for i in x do
  puts i
end

puts 'Done'
