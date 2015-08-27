# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'colorize'
require './logic'

def play
  while(@players[0][:lives] > 0 && @players[1][:lives] > 0)
    puts "- #{@players[@actual_player - 1][:name]}: #{generate_question}"
    print "Answer: "
    answer = gets.chomp
    puts verify_answer(answer.to_i) ? "- That's correct! You got 1 point!".green : "- Too bad, right answer is #{@actual_answer}. Lost 1 life.".red
    puts "-------------------------------------------------------------------------"
    next_turn
  end
  # Game ended. Display who won and scores
end

puts "************************  Multiplayer Math Game  ************************"
puts "- Let's start by selecting your names..."
puts "- Player 1 enter your name: "
p1_name = gets.chomp
@players[0][:name] = p1_name != "" ? p1_name : "Player 1"
puts "- Welcome to the game #{@players[0][:name]}!"
puts "- Player 2 enter your name: "
p2_name = gets.chomp
@players[1][:name] = p2_name != "" ? p2_name : "Player 2"
puts "- Welcome to the game #{@players[1][:name]}!"
puts "*************************************************************************"
puts "                        LET'S GET READY TO RUMBLE!                       "
play