function detect_anagrams(subject, candidates)
    retset = []
    for candidate in candidates
        i=0
        for c in candidate
           if ! (c in subject)
                break
           end
           i+=1
        end

        if i == length(candidate) == length(subject)
            push!(retset,candidate)
        end    
    end
    return retset
end
