function score(x, y)
    distance= sqrt(x^2+y^2)
    revenue=0
    if distance<=1
        revenue=10
    elseif distance<=5
        revenue=5
    elseif distance<=10
        revenue=1
    end
    return revenue
end
