# Problem 10: Summation of primes
# https://projecteuler.net/problem=10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

total = []
(1...2_000_000).each { |n| total.push(n) if n.prime? }
puts total.reduce(:+)
