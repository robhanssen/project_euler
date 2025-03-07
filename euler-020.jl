# find the digitsum of 100!
# n::BigInt = factorial(big(100))

n::BigInt = factorial(big(100))

dig::Vector{BigInt} = [big(0)]

while n > 1
    append!(dig, n % 10)
    global n = n ÷ 10
end

println(sum(dig))
