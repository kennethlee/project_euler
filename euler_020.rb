# Problem 20: Factorial digit sum
# https://projecteuler.net/problem=20

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

p (1..100).reduce(:*).to_s.split("").map { |x| x.to_i }.reduce(:+)
