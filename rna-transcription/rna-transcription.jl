function to_rna(dna)
    trans = ""
    for n in dna
        # print(n)
        if n == ""
            trans = trans
        elseif n == 'C'
            trans *= 'G'
        elseif n == 'G'
            trans *= 'C'
        elseif n == 'T'
            trans *= 'A'
        elseif n == 'A'
            trans *= 'U'
        else
            throw(ErrorException("bad input"))
        end
    end

    return trans
end

