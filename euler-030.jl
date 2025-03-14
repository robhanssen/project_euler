
function split_digits(n)
    digs = []
    while n > 0
        append!(digs, n % 10)
        n = n ÷ 10
    end
    return digs
end

function power5(i, p = 5)
    digs_pent = sum(split_digits(i) .^ p)
    if i == digs_pent return(i)
    end
end

all_nums = []

for i in 2:10000
    # append!(all_nums, Threads.@spawn power5(i))
    Threads.@spawn power5(i)
end