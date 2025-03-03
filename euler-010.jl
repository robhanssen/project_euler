# Find the sum of all the primes below two million.

function sieve(n)
    primes = [2]
    for i in 3:2:Int(floor(√n))
        if all(i % p != 0 for p in primes)
            push!(primes, i)
        end
    end
    return primes
end

N =  1_000_000
sum_of_primes = sum(sieve(N))


