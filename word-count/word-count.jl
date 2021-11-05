function wordcount(sentence)
    prev = nothing
    prevclass = 0
    res = Dict{String, Int32}()

    for c in sentence
        if isnumeric(c)
            print(c* " is numeric")
            if prevclass == 1
                prev = prev * c
            elseif prevclass == 2
                # push!(res, "sdf" => [1, 2])
                res[prev] = res[prev] + 1 
                prev = c
                prevclass = 1
            end 
        elseif isascii(c)
            print(c* " is ascii")
            if prevclass == 1
                res[prev] = res[prev] + 1 
                prev = c
                prevclass = 2
           elseif prevclass == 2
                prev = prev * c
           end 
        end
    end

    return res
end
