

x = 10 .^ (1:13) .% 13

minimum(findall(x .== 1))

recip_lengths = [1]

k = 100

for k in 2:7
    mods = 10 .^ (1:big(k)) .% k
    recip = minimum(findall(mods .== 1))
    append!(recip_lengths, recip)
end

