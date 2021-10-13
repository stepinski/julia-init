"Your optional docstring here"
function distance(a, b)
    
    if length(a) != length(b)
        throw(ArgumentError("differnt length"))
    end
    dist=0
    for (x,y) in zip(a,b)
        if x != y
            dist=dist+1
        end 
    end

    return dist
end
