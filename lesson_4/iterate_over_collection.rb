# both produce the same result for arrays

# 1
numbers = [1, 2, 3]
counter = 0

loop do
  break if counter == numbers.size
  puts numbers[counter]
  counter += 1
end

# 2
[1, 2, 3].each do |num|
  puts num
end

# another alternative to above (creates new collection)

[1, 2, 3].map do |num|
  num * 2
end

# iterate over a hash

hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end
