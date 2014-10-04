
def opponent
['P','R','S'].sample
end

def input(msg,cond=1)
  puts "#{msg}"
  if cond == 1
    gets.chomp.capitalize
  end
end

pick = input("Play Paper Rock Scissors!",0)

while 1

  pick = input "Choose one: (P/R/S)"

  computer = opponent

  if pick == 'P' && computer == 'P'
    puts 'You picked Paper and computer picked Paper.'
    puts "It's a tie."
  elsif pick == 'P' && computer == 'R'
    puts 'You picked Paper and computer picked Rock.'
    puts 'Paper wraps Rock!.'
    puts  'You win'
  elsif pick == 'P' && computer == 'S'
    puts 'You picked Paper and computer picked Scissors.'
    puts 'Scissors tear Paper :(.'
    puts 'You lose.'
  end

  if pick == 'R' && computer == 'R'
    puts 'You picked Rock and computer picked Rock.'
    puts "It's a tie."
  elsif pick == 'R' && computer == 'P'
    puts 'You picked Rock and computer picked Paper.'
    puts 'Paper wraps Rock :(.'
    puts 'You lose'
  elsif pick == 'R' && computer == 'S'
    puts 'You picked Rock and computer picked Scissors.'
    puts 'Rock smaches Scissors!'
    puts 'You win.'
  end

  if pick == 'S' && computer == 'P'
    puts 'You picked Scissors and computer picked Paper.'
    puts 'Scissors tear Paper!'
    puts "You win."
  elsif pick == 'S' && computer == 'R'
    puts 'You picked Scissors and computer picked Rock.'
    puts 'Rock smaches Scissors :(.'
    puts  'You lose'
  elsif pick == 'S' && computer == 'S'
    puts 'You picked Scissors and computer picked Scissors.'
    puts "It's a tie"
  end
  
  if ['P','R','S'].include? pick
    pick = input "Play Again (Y/N)."
  end

  if pick == 'N'
      break
  else
      next if pick == 'Y'
  end
    break
end


