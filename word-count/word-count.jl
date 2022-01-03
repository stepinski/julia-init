function wordcount(sentence)

    function isnon(c)
        return !isletter(c) & !isdigit(c)
    end
    tmp = lowercase(sentence)
    #tmp = replace(tmp, "' " => "")
    #tmp = replace(tmp, " '" => "")
    tmp = replace(tmp, "'" => "T")
    words = split(tmp,[',',' ','\t','\n'])
    res = Dict{String,Int32}()
    for w in words
        tst = replace(w, isnon => "")
        if last(tst,1)=="T" 
            tst=chop(tst)
        end
        if first(tst,1) =="T"
            tst=reverse(chop(reverse(tst)))
        end

        tst = replace(tst, "T" => "'")

        if tst != "T" && length(tst)>0
            #println("out $tst")
            tmp = get!(res, tst, 0)
            push!(res, tst => tmp + 1)
        end
    end
    return res
end
function wordcounts(sentence)
    prev = ""
    prevclass = 0
    res = Dict{String,Int32}()


    for c in lowercase(sentence)

        if isspace(c) || c == ','
            # separate word
            if length(prev) > 0
                tmp = get!(res, prev, 0)
                push!(res, prev => tmp + 1)
                prev = ""
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

        elseif isletter(c) || isnumeric(c) || (c == ''' && length(prev) > 0)
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
