def say(msg)
  puts "---#{msg}---"
end

puts "Select the operation mode: \n 1 for addition \n 2 for subtraction \n 3 for multiplicaton \n 4 for division"

mode = gets.chomp

say "Input the first number"
num1 = gets.chomp

say "Input the second number"
num2 = gets.chomp

if mode == '1'
  say "The sum of #{num1} and #{num2} equals to: #{num1.to_i + num2.to_i}"
elsif mode == '2'
  say "The difference of #{num1} and #{num2} equals to: #{num1.to_i - num2.to_i}"
elsif mode == '3'
  say "The product of #{num1} and #{num2} equals to: #{num1.to_i * num2.to_i}"
elsif mode == '4'
  say "The quotient of #{num1} and #{num2} equals to: #{num1.to_i / num2.to_i}"
end
