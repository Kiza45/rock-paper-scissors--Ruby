=begin
  This is a basic game of Rock, Paper, Scissors that runs in the temrinal.
  The Main goal behind this project was to try out Ruby and see how it is to work with
=end

puts "enter your name"
name = gets.chomp

# winnerCheck takes user input, randomises the computers choice and declares if the player has won, lost or drawn.
def winnerCheck
  options = ["rock", "paper", "scissors"]
  userPick = gets.chomp
  pick = rand(3)
  compPick = options[pick]
  puts "My pick: #{compPick}"

  if (userPick == compPick)
    put("Draw")
    finish = true

  elsif userPick == "r" && compPick == "paper"
    puts "Your pick: rock"
    puts "You Lose"
    finish = true


  elsif userPick == "r" && compPick == "scissors"
    puts "Your pick: rock"
    puts "You Win"
    finish = true


  elsif userPick == "p" && compPick == "scissors"
    puts "Your pick: paper"
    puts "You Lose"
    finish = true


  elsif userPick == "p" && compPick == "rock"
    puts "Your pick: paper"
    puts "You Win"
    finish = true


  elsif userPick == "s" && compPick == "rock"
    puts "Your pick: scissor"
    puts "You Lose"
    finish = true


  elsif userPick == "s" && compPick == "paper"
    puts "Your pick: scissor"
    puts "You Win"
    finish = true

  else
    puts "that wasn't an option! Please try again"
    finish = true
  end
end

# replay calls the game logic again without asking for the player name at the start
def replay
  puts "Pick again (r/p/s)"
  finish = false
  while (finish == false)
    self.winnerCheck
    self.playAgain
  end
end

# playAgain gives the choice to quit or play ahain and call the game logic
def playAgain
  puts "Play again?(y/n)"
  response = gets.chomp
  if response == "y"
    self.replay

  else
    puts "Thanks for playing"
    exit
  end
end

# intro script and first game
puts "Hi #{name}! I'm Ruby, lets play rock paper scissors, Pick one now(r/p/s)"
finish = false
while (finish == false)
  self.winnerCheck
  self.playAgain
end
