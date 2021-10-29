function cntvalue(c)
    val = 0
    if occursin(c, "AEIOULNRST")
        val = 1
    elseif occursin(c, "DG")
        val = 2
    elseif occursin(c, "BCMP")
        val = 3
    elseif occursin(c, "FHVWY")
        val = 4
    elseif c == "K"
        val = 5
    elseif occursin(c, "JX")
        val = 8
    elseif occursin(c, "QZ")
        val = 10
    end 
    return val
end 

function score(str)
    tmp = 0
    for c in str
        upc = uppercase(c)
        tmp = tmp + cntvalue(string(upc))
    end
    return tmp
end
