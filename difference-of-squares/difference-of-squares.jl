"Square the sum of the first `n` positive integers"
function square_of_sum(n)
    tmp=0
    for i in 1:n
        tmp+=i
    end
    return tmp^2
end

"Sum the squares of the first `n` positive integers"
function sum_of_squares(n)
    tmp=0
    for i in 1:n
        tmp+=i^2
    end
    return tmp
end

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
function difference(n)
    return abs(sum_of_squares(n) - square_of_sum(n))
end
