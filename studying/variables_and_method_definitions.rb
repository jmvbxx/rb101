# Note:
# A method definition has no notion of outer or inner scope!

# example 1
a = 'hi'

def some_method
  puts a
end

some_method

# example 2
def another_method(a)
  puts a
end

another_method(5)

# example 3
def method
  a = 1
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

method
