using Plots

collatz(n) = n % 2 == 0 ? n ÷ 2 : 3n + 1


function collatz_length(n)
    i = 1
    while !(collatz(n) in [1, 2, 4])
        n = collatz(n)
        i += 1
    end
    return i
end


@time allcycles = map(collatz_length, 1:1_000_000)

@time findall(allcycles .== maximum(allcycles))



function collatz_print(n)
    series = [n]
    i = 1
    while !(collatz(n) in [1, 2, 4])
        n = collatz(n)
        append!(series, n)
        i += 1
    end
    return series
end

y = collatz_print(8799)
plot(x = 1:length(y), y)



using Base.Threads: @spawn, fetch, threadid, nthreads

@show nthreads()

@time allcycles = map(i -> @spawn(collatz_length(i)), 1:1_000_000)
@time allcycles = map(i -> @spawn(collatz_length(i)), 1:10_000_000)


@time findall(allcycles .== maximum(allcycles))