# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'colorize'
require './logic'

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
