function isisogram(s)
    tst = replace(lowercase(s), !isletter => "")
    prev=""
    isok=true
    for l in sort(collect(tst))
        if prev==l
            isok=false
            break
        end
    end
    return isok
end
