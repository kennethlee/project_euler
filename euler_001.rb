# Problem 1: Mutliples of 3 and 5
# https://projecteuler.net/problem=1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def summer(upper_bound, first_mult, second_mult)
  sum = []
  (1...upper_bound).each do |num|
    if (num % first_mult == 0 || num % second_mult == 0)
      sum.push(num)
    end
  end
  puts sum.inject(:+)
end

summer(1000, 3, 5)
