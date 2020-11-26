puts 'Enter a number between 0 and 100'
number = gets.chomp.to_i

if number < 0
  puts 'Number is below zero'
elsif number < 51
  puts 'Number is between 0 and 50'
elsif number < 101
  puts 'Number is between 51 and 100'
else
  puts 'The number is above 100'
end
