# What is the value of the first triangle number to have over five hundred divisors?

T(n) = n * (n + 1) ÷ 2

function all_divisors(n)
    # determine all divisors of n by remainder zero after integer division
    # this returns all divisors, not necessarily primes
    high_divisors = 1:n
    return high_divisors[[n % i == 0 for i in high_divisors]]
end


triangle_numbers = map(T, 1:1_000_000)
map(all_divisors, 76576500)