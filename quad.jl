
quadratic(a, b, c) = (-b .+ [-1, 1] * √Complex(b^2 - 4 * a * c)) / (2a)

function quadratic(a, b, c)
    D = b^2 - 4*a*c
    if D >= 0 Dsqrt = √D else Dsqrt = √Complex(D) end
    (-b .+ [-1, 1] * Dsqrt)/ (2a)
end


quadratic(1, 1, -1)