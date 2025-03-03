# What is the 10,001st prime number?

function sieve(n)
    primes = [2]
    for i in 3:2:n
        if all(i % p != 0 for p in primes)
            push!(primes, i)
        end
    end
    return primes
end

# using the prime count estimator function π(n) = n / log(n)
π_estimate(n) = n / log(n)

guess = 10_000
primes_guess = π_estimate(guess)

while π_estimate(guess) < 10_001
    global guess = guess * 10
end

@time primes = sieve(guess)

@time while length(primes) < 10001
    guess = guess * 10
    primes =  sieve(guess)
end

primes[10001]
