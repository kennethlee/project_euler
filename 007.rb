# 10001st prime
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# Feels like I cheated on this one bc of my usage I required prime;
# revisit in the future to solve without it.

require 'prime'

puts Prime.take(10001).last