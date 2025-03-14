

function fibo() 
    fibos = [big(1), big(1)]
    n = 2
    while length(string(fibos[1])) < 1000
    # while fibos[1] < 1000
        insert!(fibos, 1, fibos[1] + fibos[2])
        n += 1
    end
    return (n , fibos[1])
end

n = fibo()


length(string(100))