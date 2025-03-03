#=
a = p2-q2
b = 2 pq
c = p2+q2 .

a + b + c = p2 - q2 + 2pq + p2 + q2 = 2 p2 + 2pq = 1000
<=> p2 + pq = 500

=#

param_sum(p, q) = p^2 + p * q

for p in 1:30
    for q in 1:500
        if param_sum(p, q) == 500
            global p_final = p
            global q_final = q
            break
        end
    end
end

a = p_final^2 - q_final^2
b = 2 * p_final * q_final
c = p_final^2 + q_final^2

println("a = $a; = $b;  c = $c; a*b*c = ", a * b * c)
