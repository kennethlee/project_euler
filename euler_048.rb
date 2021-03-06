# Problem 48: Self powers
# https://projecteuler.net/problem=48

# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.
# Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.

p (1..1000).map { |x| x**x }.reduce(:+).to_s.split("").last(10).join.to_i
