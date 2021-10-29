function codepart(cnt,prevc)
    codepart=cnt>1 ? string(cnt) : ""
    return codepart * prevc
end

function encode(s)
    # prevc=s
    prevc = length(s)>0 ? s[1] : s
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
            cnt = 1
        end 
        prevc = c   
    end
    
    return coded*codepart(cnt,prevc)
end




function decode(s)
    concat = "1"
    decoded = ""

    for c in s
        isnumb = isnumeric(c)
        
        if isnumb
            # collect new chars as part of number
            concat!="1" ? concat = concat * c : concat=c
        else
            cnt = parse(Int64, concat)
            decoded = decoded * repeat(c, cnt)
            concat = "1"
        end    
    end
    return decoded
end
