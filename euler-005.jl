function divisible(n)
    all(n .% (11:20) .== 0)
end



base = BigInt(2520)
found = divisible(base)


while !found
    global base += 2520
    global found = divisible(base)
end

base
println(base)

