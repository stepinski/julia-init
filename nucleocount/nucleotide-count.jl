"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    res = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for c in strand
        if c in ['A','C','G','T']
            res[c] = get(res,c,0)+1
        else 
            throw(DomainError(c, "expects A,C,G, or T"))
        end
    end
    return res
end
