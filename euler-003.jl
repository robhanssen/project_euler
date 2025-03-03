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
