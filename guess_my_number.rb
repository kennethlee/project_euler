# Guess My Number
# https://www.daniweb.com/software-development/python/threads/131973/5-crucial-projects-for-beginners

# The computer randomly generates a number. The user inputs a number, and the
# computer will tell you if you are too high, or too low. Then you will get to
# keep guessing until you guess the number.

def guess_my_number(n)
  correct_number = rand(1..n)
  puts "I've a number between 1 and #{n}; take a guess as to what it is."
  guess = gets.chomp.to_i
  while guess != correct_number
    too_high  = "Too high"
    too_low   = "Too low"
    warm      = ", but you're getting warm."
    warmer    = ", but you're very close."
    try_again = "; try again."
    if guess > correct_number
      if guess <= correct_number + 10
        puts too_high + (guess <= correct_number + 5 ? warmer : warm)
      else
        puts too_high + try_again
      end
    else
      if guess >= correct_number - 10
        puts too_low + (guess >= correct_number - 5 ? warmer : warm)
      else
        puts too_low + try_again
      end
    end
    guess = gets.chomp.to_i
  end
  puts "Nice, you guessed correctly."
end

guess_my_number(100)
