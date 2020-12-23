## EACH
# Calls the given block once for each element in self, passing that element as a parameter.
# Returns the array itself. If no block is given, an Enumerator is returned.

[1, 2, 3].each do |num|
  puts num
end

# 1
# 2
# 3
# => [1, 2, 3]

[1, 2, 3].each do |num|
  puts num + 1
end

# 2
# 3
# 4
# => [1, 2, 3]

## SELECT
# Returns a new array containing all elements of ary for which the given block returns a true value.
# If no block is given, an Enumerator is returned instead.

[1, 2, 3].select do |num|
  puts num
end

# 1
# 2
# 3
# => []

[1, 2, 3].select do |num|
  puts num + 1
end

# 2
# 3
# 4
# => []

[1, 2, 3].map do |num|
  puts num
end

# 1
# 2
# 3
# => [nil, nil, nil]

[1, 2, 3].map do |num|
  puts num + 1
end

# 2
# 3
# 4
# => [nil, nil, nil]