

sq_sum = sum(1:100)^2
sum_sq = sum(map(x->x^2, 1:100))

sq_sum - sum_sq