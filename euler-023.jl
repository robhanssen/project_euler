function sum_divisors(n)
    d = 2:1:(n-1)
    proper_divs = [1]
    append!(proper_divs, 1 .+ findall(n .% d .== 0))
    sum(proper_divs)
end

all_sum_divisors = map(sum_divisors, 1:28123)

abnumbers = []
for (i, s) in enumerate(all_sum_divisors)
    if s > i append!(abnumbers, i) end
end

sum_of_abnumbers = []

for i in abnumbers
    for j in abnumbers
        append!(sum_of_abnumbers, i + j)
    end
end

red_sum = unique(sort(sum_of_abnumbers))

not_sum = []

for i in 1:28123
    if isempty(findall(i .== red_sum)) append!(not_sum, i) end
end