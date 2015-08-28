# This file contains the actual logic of the Math Game


# Initializing player's lives
@players = [
  {
    id: 1,
    name: "Player 1",
    lives: 3,
    score: 0
  },
  {
    id: 2,
    name: "Player 2",
    lives: 3,
    score: 0
  }
]
@actual_question = ""
@actual_answer = nil
@actual_player = 1

def generate_question
  operation = Random.rand(1..4)
  num1 = Random.rand(1..20)
  num2 = Random.rand(1..20)
  case operation
  when 1
    # Addition
    @actual_answer = num1 + num2
    "What does #{num1} plus #{num2} equal?"
  when 2
    # Substraction
    @actual_answer = num1 - num2
    "What does #{num1} minus #{num2} equal?"
  when 3
    # Multiplication
    @actual_answer = num1 * num2
    "What does #{num1} times #{num2} equal?"
  when 4
    # Division
    @actual_answer = num1 / num2
    "What does #{num1} divided by #{num2} equal (rounded to the nearest integer)?"
  end
end

def verify_answer(answer)
  @players[@actual_player - 1][:score] += @actual_answer == answer ? 1 : 0
  @players[@actual_player - 1][:lives] -= @actual_answer == answer ? 0 : 1
  @actual_answer == answer
end

def next_turn
  if @actual_player == 1
    @actual_player = 2
  else
    @actual_player = 1
  end
end

def get_loser
  if @players[0][:lives] == 0
    @players[0][:name]
  elsif @players[0][:lives] == 0
    @players[0][:name]
  else
    "No loser yet"
  end  
end

def restart_lives
  @players[0][:lives] = 3
  @players[1][:lives] = 3
end