function transform(input::AbstractDict)
    out= Dict{Char, Int64}()
    for (k, v) in input
        for i in v
            push!(out,lowercase(i)=>k)            
        end
    end
    return out
end

