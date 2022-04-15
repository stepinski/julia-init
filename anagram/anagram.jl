function detect_anagrams(subject, candidates)
    retset = []
    # transc=candidates.collect().sort()
    for c in candidates
        if c |>collect |> sort == subject |>lowercase |>collect|>sort
            push!(retset,c)
        end

        # i=0
        # tmp=subject
        # for c in candidate
        #    if ! (c in tmp)
        #         break
        #    end
        #    tmp = chop(tmp, head=1,tail=0)
        #    print(" ")
        #    print(candidate)
        #    print(" ")
        #    print(tmp)
        #    i+=1
        # end

        # if i == length(candidate) == length(subject)
        #     push!(retset,candidate)
        # end    
    end
    return retset
end
