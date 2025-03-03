# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

rng(n) = 1:n-1


multiple3or5(n) = n % 3 == 0 || n % 5 == 0 ? n : 0

N = 1000

sum(map(multiple3or5, rng([10, 49, 1000, 8456, 19546]))) 

#
# alternative version
#
#

function multipleOf3Or5(n)
    fullrange = (1:n) .- 1
    sum([x % 3 == 0 || x % 5 == 0 ? x : 0 for x in fullrange])
end

map(multipleOf3Or5, [10, 49, 1000, 8456, 19546]) == [23, 543, 233168, 16687353, 89144745]