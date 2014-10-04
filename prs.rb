#Refactored Paper Rock Scissors.
#

puts 'Play Paper Rock Scissors!'
options = ['P','R','S']

def display_winning_message(winning_choice)
  case winning_choice
  when 'P'
    puts 'You picked Paper and computer picked Rock.'
    puts 'Paper wraps Rock!.'
  when 'S'
    puts 'You picked Scissors and computer picked Paper.'
    puts 'Scissors schreds Paper!'
  when 'R'
    puts 'You picked Rock and computer picked Scissors.'
    puts 'Rock smashes Scissors.'
  end
end

loop do

  begin  
    puts "Choose one: (P/R/S)"
    player_choice = gets.chomp.capitalize
  end until options.include?(player_choice)
  
  computer_choice  = options.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'P' && computer_choice == 'R') || (player_choice == 'R' && 
    computer_choice == 'S') || (player_choice == 'S' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You won!"

  else
    display_winning_message(player_choice)
    puts "Computer won!"
  end






end
