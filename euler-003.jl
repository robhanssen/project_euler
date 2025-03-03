# The prime factors of 13195 are 5, 7, 13 nd 29.
# What is the largest prime factor of the number 600851475143?

#sieve of erastrathenes
function sieve(n)
    primes = [2]
    for i in 3:2:Int(floor(√n))
        if all(i % p != 0 for p in primes)
            push!(primes, i)
        end
    end
    return primes
end

N =  600851475143
sieved_prime = sieve(N)


@time maximum(sieved_prime[findall(N .% sieved_prime .== 0)])

#
# alternate solution
#

function all_divisors(n)
    # determine all divisors of n by remainder zero after integer division
    # this returns all divisors, not necessarily primes
    high_divisors = 2:n
    return high_divisors[[n % i == 0 for i in high_divisors]]
end

function max_divisor(n)
    # first determine all divisors of n    
    all_divs = all_divisors(n)
    # run the same algorithm on all divisors
    divs_of_divs = map(all_divisors, all_divs)
    # primes are number where the length of the divisor array equals 1
    primes = [length(d) == 1 ? d : 0 for d in divs_of_divs]
    # remove all zeros and select the first (and only) element of the primes. Filter for maximum.
    return maximum(filter!(x -> x ≠ 0, primes))[1]
end

map(max_divisor, [2, 3, 5, 7, 8, 13195]) == [2, 3, 5, 7, 2, 29]