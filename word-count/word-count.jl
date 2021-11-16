function wordcount(sentence)

    tmp=lowercase(sentence)
    tmp=replace(tmp, "' "  =>"")
    tmp=replace(tmp," '" =>"")
    tmp=replace(tmp,"'" =>"T")
    words=split(tmp)
    for w in words
        tst=replace(w, !isletter =>"")
        println(tst)
    end
end
function wordcounts(sentence)
    prev = ""
    prevclass = 0
    res = Dict{String,Int32}()


    for c in lowercase(sentence)
        
        if isspace(c) || c==','
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
        
        elseif isletter(c) || isnumeric(c) || (c==''' && length(prev)>0)
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
