puts "enter your name"
name = gets.chomp
pick = rand(3)
options = ["rock", "paper", "scissors"]
compPick = options[pick]
puts "Hi #{name}! I'm Ruby, lets play rock paper scissors, Pick one now(r/p/s)"
finish = false
while (finish == false)
  userPick = gets.chomp
  puts "My pick: #{compPick}"

  if (userPick == compPick)
    put("Draw")
    finish = true


  elsif userPick == "r" && compPick == "paper"
    puts "Your pick: rock"
    print "You Lose"
    finish = true


  elsif userPick == "r" && compPick == "scissors"
    puts "Your pick: rock"
    print "You Win"
    finish = true


  elsif userPick == "p" && compPick == "scissors"
    puts "Your pick: paper"
    print "You Lose"
    finish = true


  elsif userPick == "p" && compPick == "rock"
    puts "Your pick: paper"
    print "You Win"
    finish = true


  elsif userPick == "s" && compPick == "rock"
    puts "Your pick: scissor"
    print "You Lose"
    finish = true


  elsif userPick == "s" && compPick == "paper"
    puts "Your pick: scissor"
    print "You Win"
    finish = true


  else
    print "that wasn't an option! Please try again"
    finish = true
  end
end
