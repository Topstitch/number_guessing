# Computer tells you that you lose after 5 incorrect guesses
# Computer makes sarcastic comment if you guess the same thing twice
# At least two methods
# 1:38 pm control c cancels crazy terminal; while loops are false
# program chooses a random number between 1 and 100, (Including 1 and 100, or 2 -99?)asks you to guess
# if your guess is less, it will tell you you were low and let you guess again
# same for if your guess is high
# correct guess--tells you you win, and quit
def computer_number_generator()
  return rand(101) + 1
end

puts "I'm thinking of a secret number between 1 and 100!  Take a guess!"

def person_guesses()
  computer_number = computer_number_generator()
  puts "The answer is #{computer_number}"
  user_guess = gets.chomp.to_i
  while(user_guess != computer_number)
    if(user_guess < computer_number)
      puts "Uh oh, too low! Try again!"
      user_guess = gets.chomp.to_i
    end

    if(user_guess > computer_number)
      puts "Nice try, but too high! Try again!"
      user_guess = gets.chomp.to_i
    end
  end
  if(user_guess == computer_number)
    puts "Wow! You figured it out! You win!"
  end
end
person_guesses()
