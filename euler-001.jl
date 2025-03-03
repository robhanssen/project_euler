# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

rng(n) = 1:n-1


multiple3or5(n) = n % 3 == 0 || n % 5 == 0 ? n : 0

N = 1000

sum(map(multiple3or5, rng(N))) 