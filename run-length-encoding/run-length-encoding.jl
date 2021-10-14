function codepart(cnt,prevc)
    codepart=cnt>1 ? string(cnt) : ""
    return codepart * prevc
end

function encode(s)
    prevc = s[1]
    coded = ""
    cnt=0

    for c in s
        if c == prevc
            cnt = cnt + 1 
        else
            # codepart=cnt>1 ? string(cnt) : ""
            # print(prevc)
            
            # print(codepart(cnt,prevc))
            
            coded = coded * codepart(cnt,prevc)
            # prevc = ""
            cnt = 0
        end 
        prevc = c   
    end
    
    return coded*codepart(cnt,prevc)
end




function decode(s)
    concat = ""
    decoded = ""

    for c in s
        isnumb = isnumeric(c)
        
        if isnumb
            # collect new chars as part of number
            concat = concat * c
        else
            cnt = parse(Int64, concat)
            decoded = decoded + repeat(c, cnt)
            concat = ""

        end    
    end
    return coded
end
