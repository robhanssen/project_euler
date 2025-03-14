
function sum_divisors(n)
    d = 2:1:(n-1)
    proper_divs = [1]
    append!(proper_divs, 1 .+ findall(n .% d .== 0))
    sum(proper_divs)
end


all_divs_sums = map(sum_divisors, 1:1000)

for (i, s) in enumerate(all_divs_sums)
    if all_divs_sums[s] == i && all_divs_sums[i] == s
        println(i," and ", s)
    end
end