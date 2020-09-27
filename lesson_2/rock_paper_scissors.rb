VALID_CHOICES = %w[rock paper scissors lizard spock]

def prompt(message)
  puts "=> #{message}"
end

def win?(player1, player2)
  (player1 == 'rock' && (player2 == 'scissors' || player2 == 'lizard')) ||
    (player1 == 'scissors' && (player2 == 'paper' || player2 == 'lizard')) ||
    (player1 == 'paper' && (player2 == 'rock' || player2 == 'spock')) ||
    (player1 == 'lizard' && (player2 == 'spock' || player2 == 'paper')) ||
    (player1 == 'spock' && (player2 == 'scissors' || player2 == 'rock'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('You lose!')
  else
    prompt("It's a tie!")
  end
end

# TODO:
# Keep score of the player's and computer's wins. When either the player or computer reaches five wins,
# the match is over, and the winning player becomes the grand winner.

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}. The computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt('Do you want to play again? (y/n)')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing!')
