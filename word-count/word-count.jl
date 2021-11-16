function wordcount(sentence)
    prev = ""
    prevclass = 0
    res = Dict{String,Int32}()

    for c in sentence
        
        if isspace(c)
        # separate word
            if length(prev) > 0 
                tmp = get!(res, prev, 0)
                push!(res, prev => tmp + 1)
                prev=""
            end
    
        # elseif isnumeric(c)
        #     print(c * " is numeric")
        #     if prevclass == 0 
        #         # we shall add previous word
                
        #     elseif prevclass == 2
        #         # push!(res, "sdf" => [1, 2])
        #         res[prev] = res[prev] + 1 
        #         prev = c
        #         prevclass = 1
        #     end
        
        elseif isletter(c) || isnumeric(c)
            print(c * " is ascii")
            if prevclass == 0
                prev = prev * c
           elseif prevclass == 1
                throw("not implemented")
           end 
        
        
        end
    end
    # adding remaining word to dictionary
    if length(prev) > 0 
        tmp = get!(res, prev, 0)
        push!(res, prev => tmp + 1)
        # res[prev] = res[prev] + 1 
    end

    return res
end
