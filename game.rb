puts "I'm thinking of a secret number between 1 and 100!"
puts "Take a guess! You have 5 chances."

def computer_number_generator()
  my_own_array = (1..100).to_a
  return my_own_array.sample
end

def person_guesses()
  computer_number = computer_number_generator()
  #puts "The answer is #{computer_number}"
  user_guess = gets.chomp.to_i
  count = 0
  tries = []
  tries << user_guess
  low_tries = []
  high_tries = []
  while((user_guess != computer_number) && (count < 4))
    count = count + 1
    newest_guess = tries.pop
    if tries.include?(user_guess)
      puts "Dummy McDumpypants...you already said that!"
    else
      if(user_guess < computer_number)
        low_tries << user_guess
        if (count != 1) && (user_guess < low_tries.max) && (low_tries.length != 0)
          puts "Why can't you listen? I said, it's not that low!"
        else
          puts "Uh oh, too low! Try again!"
        end
      else
        high_tries << user_guess
        if (count != 1) && (user_guess > high_tries.min) && (high_tries.length != 0)
          puts "Why weren't you paying attention? I told you, that's too high!"
        else
          puts "Nice try, but too high! Try again!"
        end
      end
    end
    tries << newest_guess
    user_guess = gets.chomp.to_i
    tries << user_guess
  end
  if(user_guess == computer_number)
    puts "Wow! You figured it out! You win!"
  end
  if(count == 4) && (user_guess != computer_number)
    puts "Sorry...you wasted all your chances. The answer was #{computer_number}."
  end
end

person_guesses()
