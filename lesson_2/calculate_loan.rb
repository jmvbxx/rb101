def prompt(message)
  puts("=> #{message}")
end

loop do
  prompt('Welcome to load calculator!')
  prompt('---------------------------')

  prompt('What is the loan amount?')

  amount = ''
  loop do
    amount = gets.chomp

    if amount.empty? || amount.to_f < 0
      prompt('Must enter positive number')
    else
      break
    end
  end

  prompt('What is the interest rate?')

  interest_rate = ''
  loop do
    interest_rate = gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt('Must enter a positive number')
    else
      break
    end
  end

  prompt('What is the duration (in years)?')

  years = ''
  loop do
    years = gets.chomp

    if years.empty? || years.to_i < 0
      prompt('Must enter a positive number')
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f *
    (monthly_interest_rate /
      (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt('Another calculation?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using this loan calculator')
prompt('Good bye!')
