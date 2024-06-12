puts "enter your name"
name = gets.chomp


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

def replay
  puts "Pick again (r/p/s)"
  finish = false
  while (finish == false)
    self.winnerCheck
    self.playAgain
  end
end

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

puts "Hi #{name}! I'm Ruby, lets play rock paper scissors, Pick one now(r/p/s)"
finish = false
while (finish == false)
  self.winnerCheck
  self.playAgain
end
