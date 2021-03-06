# "Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”."

def fizzbuzz(upperbound)
  (1..upperbound).each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz"
    elsif (num % 3 == 0)
      puts "Fizz"
    elsif (num % 5 == 0)
      puts "Buzz"
    else
      puts num
    end
  end
end

fizzbuzz(100)
