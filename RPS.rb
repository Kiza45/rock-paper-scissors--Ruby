puts "enter your name"
name = gets.chomp
pick = rand(3)
options = ["rock", "paper", "scissors"]
compPick = options[pick]
puts "Hi #{name}!, lets play rock paper scissors, Pick which one now"
end = False
while (end == False)
  userPick = gets.chomp
  print(compPick)

  if (userPick == compPick)
    put("try again")

  end

  elsif userPick == "rock" && compPick = "paper"

  end

  elsif userPick == "rock" && compPick = "scissors"

  end

  elsif userPick == "paper" && compPick = "scissors"

  end

elsif userPick == "rock" && compPick = "scissors"

end

elsif compPick == "rock" && userPick = "paper"

end

elsif compPick == "rock" && userPick = "scissors"

end

elsif compPick == "paper" && userPick = "scissors"

end

elsif compPick == "rock" && userPick = "scissors"

end

else
  print "that wasn't an option! Please try again"
end
