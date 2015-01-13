# +Computer tells you that you lose after 5 incorrect guesses
# Computer makes sarcastic comment if you guess the same thing twice
# At least two methods
#   1:38 pm control c cancels crazy terminal; while loops are false 2:38ish parking
#   4:15 start again
# +program chooses a random number between 1 and 100, (Including 1 and 100, or 2 -99?)asks you to guess
# +if your guess is less, it will tell you you were low and let you guess again
# +same for if your guess is high
# +correct guess--tells you you win, and quit

# def computer_number_generator()
#   return rand(101) + 1
# end
# computer_number = computer_number_generator


#save
# puts "I'm thinking of a secret number between 1 and 100!"
# puts "Take a guess! You have 5 chances."
#
# def computer_number_generator()
#   return rand(101) + 1
# end
#
# def person_guesses()
#   computer_number = computer_number_generator()
#   puts "The answer is #{computer_number}"
#   user_guess = gets.chomp.to_i
#   while(user_guess != computer_number)
#     if(user_guess < computer_number)
#       puts "Uh oh, too low! Try again!"
#     end
#     if(user_guess > computer_number)
#       puts "Nice try, but too high! Try again!"
#     end
#     user_guess = gets.chomp.to_i
#   end
#   if(user_guess == computer_number)
#     puts "Wow! You figured it out! You win!"
#   end
# end
#
#
# person_guesses()


puts "I'm thinking of a secret number between 1 and 100!"
puts "Take a guess! You have 5 chances."

def computer_number_generator()
  return rand(100) + 1
end

def person_guesses()
  computer_number = computer_number_generator()
  puts "The answer is #{computer_number}"
  user_guess = gets.chomp.to_i
  count = 0
  tries = []
  tries << user_guess
  while((user_guess != computer_number) && (count < 4))
    count = count + 1
    newest_guess = tries.pop
    if tries.include?(user_guess)
      puts "Dummy McDumpypants"
    end
    tries << newest_guess
    if(user_guess < computer_number)
      puts "Uh oh, too low! Try again!"
    else(user_guess > computer_number)
      puts "Nice try, but too high! Try again!"
    end
    user_guess = gets.chomp.to_i
    tries << user_guess
  end
  if(user_guess == computer_number)
    puts "Wow! You figured it out! You win!"
  end
  if(count == 4) && (user_guess != computer_number)
    puts "Sorry...you wasted all your chances."
  end
end


person_guesses()
